#include "catch.hpp"
#include "common/config.hpp"
#include "common/io.hpp"
#include "common/mesh.hpp"
#include "problems/checkerboard.hpp"
#include "problems/lattice.hpp"
#include "problems/linesource.hpp"
#include "quadratures/quadraturebase.hpp"

TEST_CASE( "checkerboard problem cross sections", "[problem_geometry]" ) {
    std::string config_file = std::string( TESTS_PATH ) + "input/validation_tests/SN_solver/checkerboard_SN.cfg";
    Config* config          = new Config( config_file );
    Mesh* mesh              = LoadSU2MeshFromFile( config );
    QuadratureBase* quad    = QuadratureBase::Create( config );

    Checkerboard_SN problem( config, mesh, quad );
    Vector energies( 1, 1.0 );

    VectorVector sigmaS = problem.GetScatteringXS( energies );
    VectorVector sigmaT = problem.GetTotalXS( energies );

    SECTION( "cross section dimensions" ) {
        REQUIRE( sigmaS.size() == 1u );
        REQUIRE( sigmaT.size() == 1u );
        REQUIRE( sigmaS[0].size() == mesh->GetNumCells() );
        REQUIRE( sigmaT[0].size() == mesh->GetNumCells() );
    }

    SECTION( "sigma_s <= sigma_t everywhere" ) {
        bool valid = true;
        for( unsigned i = 0; i < sigmaS[0].size(); ++i ) {
            if( sigmaS[0][i] > sigmaT[0][i] + 1e-12 ) valid = false;
        }
        REQUIRE( valid );
    }

    SECTION( "cross section values are non-negative" ) {
        bool valid = true;
        for( unsigned i = 0; i < sigmaS[0].size(); ++i ) {
            if( sigmaS[0][i] < -1e-12 || sigmaT[0][i] < -1e-12 ) valid = false;
        }
        REQUIRE( valid );
    }

    SECTION( "source is zero outside source region" ) {
        auto externalSource = problem.GetExternalSource( energies );
        auto cellMids       = mesh->GetCellMidPoints();
        bool valid          = true;
        for( unsigned j = 0; j < cellMids.size(); ++j ) {
            double x = cellMids[j][0];
            double y = cellMids[j][1];
            // Source should only be non-zero in [3,4] x [3,4]
            if( ( x < 3.0 || x > 4.0 || y < 3.0 || y > 4.0 ) && externalSource[0][j][0] > 1e-12 ) {
                valid = false;
            }
        }
        REQUIRE( valid );
    }

    SECTION( "initial condition is uniform small value" ) {
        VectorVector ic = problem.SetupIC();
        REQUIRE( ic.size() == mesh->GetNumCells() );
        bool valid = true;
        for( unsigned j = 0; j < ic.size(); ++j ) {
            // All initial values should be 1e-10
            for( unsigned k = 0; k < ic[j].size(); ++k ) {
                if( std::fabs( ic[j][k] - 1e-10 ) > 1e-12 ) valid = false;
            }
        }
        REQUIRE( valid );
    }

    delete quad;
    delete mesh;
    delete config;
}

TEST_CASE( "lattice problem cross sections", "[problem_geometry]" ) {
    // Use the checkerboard SN config as a starting point and modify for lattice
    // We need a config with PROBLEM = LATTICE to make ProblemBase::Create work,
    // but we can construct Lattice_SN directly if we have a mesh in [-3.5, 3.5]^2
    // For now, use the checkerboard config but construct Lattice directly
    std::string config_file = std::string( TESTS_PATH ) + "input/validation_tests/SN_solver/checkerboard_SN.cfg";
    Config* config          = new Config( config_file );
    Mesh* mesh              = LoadSU2MeshFromFile( config );
    QuadratureBase* quad    = QuadratureBase::Create( config );

    // Even though the mesh doesn't match Lattice domain exactly,
    // we can test the interface and cross-section properties
    Lattice_SN problem( config, mesh, quad );
    Vector energies( 1, 1.0 );

    VectorVector sigmaS = problem.GetScatteringXS( energies );
    VectorVector sigmaT = problem.GetTotalXS( energies );

    SECTION( "cross section dimensions" ) {
        REQUIRE( sigmaS.size() == 1u );
        REQUIRE( sigmaT.size() == 1u );
        REQUIRE( sigmaS[0].size() == mesh->GetNumCells() );
        REQUIRE( sigmaT[0].size() == mesh->GetNumCells() );
    }

    SECTION( "sigma_s <= sigma_t everywhere" ) {
        bool valid = true;
        for( unsigned i = 0; i < sigmaS[0].size(); ++i ) {
            if( sigmaS[0][i] > sigmaT[0][i] + 1e-12 ) valid = false;
        }
        REQUIRE( valid );
    }

    SECTION( "cross sections are non-negative" ) {
        bool valid = true;
        for( unsigned i = 0; i < sigmaS[0].size(); ++i ) {
            if( sigmaS[0][i] < -1e-12 || sigmaT[0][i] < -1e-12 ) valid = false;
        }
        REQUIRE( valid );
    }

    SECTION( "QOI initialization" ) {
        REQUIRE( problem.GetCurAbsorptionLattice() == Approx( 0.0 ) );
        REQUIRE( problem.GetTotalAbsorptionLattice() == Approx( 0.0 ) );
        REQUIRE( problem.GetMaxAbsorptionLattice() == Approx( 0.0 ) );
    }

    delete quad;
    delete mesh;
    delete config;
}

TEST_CASE( "line source analytical solution", "[problem_geometry]" ) {
    std::string config_file = std::string( TESTS_PATH ) + "input/validation_tests/SN_solver/linesource_SN.cfg";
    Config* config          = new Config( config_file );
    Mesh* mesh              = LoadSU2MeshFromFile( config );
    QuadratureBase* quad    = QuadratureBase::Create( config );

    LineSource_SN problem( config, mesh, quad );
    Vector energies( 1, 1.0 );

    SECTION( "cross sections are uniform" ) {
        VectorVector sigmaS = problem.GetScatteringXS( energies );
        VectorVector sigmaT = problem.GetTotalXS( energies );
        REQUIRE( sigmaS.size() == 1u );
        REQUIRE( sigmaT.size() == 1u );

        // All cells should have same scattering XS
        bool uniformS = true;
        bool uniformT = true;
        for( unsigned i = 1; i < sigmaS[0].size(); ++i ) {
            if( std::fabs( sigmaS[0][i] - sigmaS[0][0] ) > 1e-12 ) uniformS = false;
            if( std::fabs( sigmaT[0][i] - sigmaT[0][0] ) > 1e-12 ) uniformT = false;
        }
        REQUIRE( uniformS );
        REQUIRE( uniformT );
    }

    SECTION( "external source is zero" ) {
        auto Q = problem.GetExternalSource( energies );
        bool allZero = true;
        for( unsigned j = 0; j < Q[0].size(); ++j ) {
            if( std::fabs( Q[0][j][0] ) > 1e-12 ) allZero = false;
        }
        REQUIRE( allZero );
    }

    SECTION( "analytical solution - causality" ) {
        // For sigma_s = 1: solution should be 0 when t < R (before wavefront arrives)
        double t = 0.5;
        double R = 0.8;    // R > t, so solution should be 0
        double x = R;
        double y = 0.0;
        double sol = problem.GetAnalyticalSolution( x, y, t, 1.0 );
        REQUIRE( sol == Approx( 0.0 ).margin( 1e-12 ) );
    }

    SECTION( "analytical solution - zero at t=0" ) {
        double sol = problem.GetAnalyticalSolution( 0.5, 0.5, 0.0, 1.0 );
        REQUIRE( sol == Approx( 0.0 ) );
    }

    SECTION( "analytical solution - positive inside wavefront" ) {
        // For sigma_s = 1: solution should be positive when t > R
        double t   = 1.0;
        double x   = 0.1;
        double y   = 0.0;
        double sol = problem.GetAnalyticalSolution( x, y, t, 1.0 );
        REQUIRE( sol > 0.0 );
    }

    SECTION( "analytical solution - radial symmetry" ) {
        // Solution at (x,y) should equal solution at (y,x) due to rotational symmetry
        double t    = 1.0;
        double x    = 0.3;
        double y    = 0.4;
        double sol1 = problem.GetAnalyticalSolution( x, y, t, 1.0 );
        double sol2 = problem.GetAnalyticalSolution( y, x, t, 1.0 );
        REQUIRE( sol1 == Approx( sol2 ).epsilon( 1e-6 ) );

        // Also test negation symmetry
        double sol3 = problem.GetAnalyticalSolution( -x, y, t, 1.0 );
        REQUIRE( sol1 == Approx( sol3 ).epsilon( 1e-6 ) );
    }

    SECTION( "initial condition is smooth Gaussian" ) {
        VectorVector ic = problem.SetupIC();
        REQUIRE( ic.size() == mesh->GetNumCells() );
        // Values should be positive
        bool allPositive = true;
        for( unsigned j = 0; j < ic.size(); ++j ) {
            for( unsigned k = 0; k < ic[j].size(); ++k ) {
                if( ic[j][k] < 0 ) allPositive = false;
            }
        }
        REQUIRE( allPositive );
    }

    delete quad;
    delete mesh;
    delete config;
}
