#include "catch.hpp"
#include "common/config.hpp"

TEST_CASE( "extended config parameter tests", "[config_extended]" ) {
    std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/common/unit_config.cfg";
    Config* config       = new Config( filename );

    SECTION( "solver parameters" ) {
        // Default solver is SN_SOLVER
        REQUIRE( config->GetSolverName() == SN_SOLVER );
        // Default entropy
        REQUIRE( config->GetEntropyName() == QUADRATIC );
        // SigmaS default for linesource
        REQUIRE( config->GetSigmaS() >= 0.0 );
        // Max moment degree default
        REQUIRE( config->GetMaxMomentDegree() >= 0 );
    }

    SECTION( "output paths are non-empty" ) {
        REQUIRE( !config->GetOutputFile().empty() );
        REQUIRE( !config->GetLogDir().empty() );
    }

    SECTION( "mesh file path" ) { REQUIRE( !config->GetMeshFile().empty() ); }

    SECTION( "optimizer defaults" ) {
        REQUIRE( config->GetNewtonOptimizerEpsilon() > 0.0 );
        REQUIRE( config->GetNewtonIter() > 0 );
        REQUIRE( config->GetNewtonStepSize() > 0.0 );
        REQUIRE( config->GetNewtonMaxLineSearches() > 0 );
    }

    SECTION( "CFL and time" ) {
        REQUIRE( config->GetCFL() == Approx( 0.4 ) );
        REQUIRE( config->GetTEnd() == Approx( 0.3 ) );
    }

    SECTION( "quadrature" ) {
        REQUIRE( config->GetQuadName() == QUAD_MonteCarlo );
        REQUIRE( config->GetQuadOrder() == 5000 );
    }

    SECTION( "problem and kernel" ) {
        REQUIRE( config->GetProblemName() == PROBLEM_Linesource );
        REQUIRE( config->GetKernelName() == KERNEL_Isotropic );
    }

    SECTION( "boundary conditions" ) {
        REQUIRE( config->GetBoundaryType( "DirichletTestMarker1" ) == DIRICHLET );
        REQUIRE( config->GetBoundaryType( "DirichletTestMarker2" ) == DIRICHLET );
        REQUIRE( config->GetBoundaryType( "NeumannTestMarker1" ) == NEUMANN );
        REQUIRE( config->GetBoundaryType( "NeumannTestMarker2" ) == NEUMANN );
        // Unknown marker should return INVALID
        REQUIRE( config->GetBoundaryType( "UnknownMarker" ) == INVALID );
    }

    SECTION( "boolean defaults" ) {
        // HPC default should be false
        REQUIRE( config->GetHPC() == false );
        // CSD default
        REQUIRE( config->GetIsCSD() == false );
    }

    delete config;
}

TEST_CASE( "optimizer config parsing", "[config_extended]" ) {

    SECTION( "Newton optimizer config" ) {
        std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerNewton.cfg";
        Config* config       = new Config( filename );
        REQUIRE( config->GetOptimizerName() == NEWTON );
        REQUIRE( config->GetEntropyName() == QUADRATIC );
        REQUIRE( config->GetMaxMomentDegree() == 1 );
        REQUIRE( config->GetNewtonFastMode() == false );
        REQUIRE( config->GetNewtonIter() == 100 );
        REQUIRE( config->GetNewtonOptimizerEpsilon() == Approx( 0.01 ) );
        REQUIRE( config->GetNewtonStepSize() == Approx( 0.5 ) );
        REQUIRE( config->GetNewtonMaxLineSearches() == 100 );
        REQUIRE( config->GetQuadName() == QUAD_GaussLegendreTensorized );
        REQUIRE( config->GetQuadOrder() == 4 );
        REQUIRE( config->GetSNAllGaussPts() == true );
        delete config;
    }

    SECTION( "Regularized Newton optimizer config" ) {
        std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerRegularizedNewton.cfg";
        Config* config       = new Config( filename );
        REQUIRE( config->GetOptimizerName() == REGULARIZED_NEWTON );
        REQUIRE( config->GetEntropyName() == MAXWELL_BOLTZMANN );
        REQUIRE( config->GetMaxMomentDegree() == 3 );
        REQUIRE( config->GetRegularizerGamma() == Approx( 0.001 ) );
        REQUIRE( config->GetSphericalBasisName() == SPHERICAL_MONOMIALS );
        REQUIRE( config->GetQuadName() == QUAD_GaussLegendreTensorized2D );
        REQUIRE( config->GetQuadOrder() == 20 );
        delete config;
    }

    SECTION( "Part Regularized Newton optimizer config" ) {
        std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerPartRegularizedNewton.cfg";
        Config* config       = new Config( filename );
        REQUIRE( config->GetOptimizerName() == PART_REGULARIZED_NEWTON );
        REQUIRE( config->GetEntropyName() == MAXWELL_BOLTZMANN );
        REQUIRE( config->GetMaxMomentDegree() == 3 );
        REQUIRE( config->GetRegularizerGamma() == Approx( 0.001 ) );
        delete config;
    }

    SECTION( "MB Newton optimizer config" ) {
        std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerNewtonMB.cfg";
        Config* config       = new Config( filename );
        REQUIRE( config->GetEntropyName() == MAXWELL_BOLTZMANN );
        delete config;
    }
}
