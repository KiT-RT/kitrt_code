#include <numeric>

#include "catch.hpp"
#include "common/config.hpp"
#include "optimizers/optimizerbase.hpp"
#include "quadratures/quadraturebase.hpp"
#include "velocitybasis/sphericalbase.hpp"
#include "velocitybasis/sphericalharmonics.hpp"

// Helper to set up moment basis from config
static VectorVector SetupMomentBasis( Config* config, SphericalBase* basis, QuadratureBase* quad ) {
    VectorVector momentBasis( quad->GetNq() );
    VectorVector quadPointsSphere = quad->GetPointsSphere();
    for( unsigned idx_quad = 0; idx_quad < quad->GetNq(); idx_quad++ ) {
        double my  = quadPointsSphere[idx_quad][0];
        double phi = quadPointsSphere[idx_quad][1];
        momentBasis[idx_quad] = basis->ComputeSphericalBasis( my, phi );
    }
    return momentBasis;
}

TEST_CASE( "Newton optimizer with quadratic entropy - zero multipliers", "[optimizers_extended]" ) {
    // Test that solving for the isotropic distribution gives near-zero multipliers
    std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerNewton.cfg";
    Config* config       = new Config( filename );
    SphericalHarmonics basis( config->GetMaxMomentDegree() );
    QuadratureBase* quad   = QuadratureBase::Create( config );
    OptimizerBase* optimizer = OptimizerBase::Create( config );

    unsigned nTotalEntries = basis.GetGlobalIndexBasis( config->GetMaxMomentDegree(), config->GetMaxMomentDegree() ) + 1;

    // For quadratic entropy, alpha = u at optimum
    // Test with u close to zero (except first component)
    Vector u( nTotalEntries, 0.0 );
    u[0] = 1.0;    // first moment = 1
    Vector alpha( nTotalEntries, 0.0 );

    VectorVector moments = VectorVector( quad->GetNq() );
    VectorVector quadPointsSphere = quad->GetPointsSphere();
    for( unsigned idx_quad = 0; idx_quad < quad->GetNq(); idx_quad++ ) {
        double my  = quadPointsSphere[idx_quad][0];
        double phi = quadPointsSphere[idx_quad][1];
        moments[idx_quad] = basis.ComputeSphericalBasis( my, phi );
    }

    optimizer->Solve( alpha, u, moments );

    REQUIRE( std::fabs( norm( alpha - u ) ) < config->GetNewtonOptimizerEpsilon() );

    // Reconstruct and verify
    Vector uRecons( nTotalEntries, 0.0 );
    optimizer->ReconstructMoments( uRecons, alpha, moments );
    REQUIRE( std::fabs( norm( uRecons - u ) ) < config->GetNewtonOptimizerEpsilon() );

    delete optimizer;
    delete quad;
    delete config;
}

TEST_CASE( "Newton optimizer with MB entropy - different initial guesses", "[optimizers_extended]" ) {
    std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerNewtonMB.cfg";
    Config* config       = new Config( filename );
    SphericalBase* basis = SphericalBase::Create( config );
    QuadratureBase* quad = QuadratureBase::Create( config );
    OptimizerBase* optimizer = OptimizerBase::Create( config );

    unsigned nTotalEntries = basis->GetBasisSize();
    Vector u( nTotalEntries, 0.5 );
    u[0] = 1.0;

    VectorVector momentBasis = SetupMomentBasis( config, basis, quad );

    SECTION( "zero initial guess" ) {
        Vector alpha( nTotalEntries, 0.0 );
        optimizer->Solve( alpha, u, momentBasis );
        Vector uRecons( nTotalEntries, 0.0 );
        optimizer->ReconstructMoments( uRecons, alpha, momentBasis );
        REQUIRE( std::fabs( norm( uRecons - u ) ) < config->GetNewtonOptimizerEpsilon() );
    }

    SECTION( "non-zero initial guess" ) {
        Vector alpha( nTotalEntries, 0.1 );
        optimizer->Solve( alpha, u, momentBasis );
        Vector uRecons( nTotalEntries, 0.0 );
        optimizer->ReconstructMoments( uRecons, alpha, momentBasis );
        REQUIRE( std::fabs( norm( uRecons - u ) ) < config->GetNewtonOptimizerEpsilon() );
    }

    delete optimizer;
    delete quad;
    delete basis;
    delete config;
}

TEST_CASE( "Regularized Newton - moment reconstruction consistency", "[optimizers_extended]" ) {
    std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerRegularizedNewton.cfg";
    Config* config       = new Config( filename );
    SphericalBase* basis = SphericalBase::Create( config );
    QuadratureBase* quad = QuadratureBase::Create( config );
    OptimizerBase* optimizer = OptimizerBase::Create( config );

    unsigned nTotalEntries = basis->GetBasisSize();
    VectorVector momentBasis = SetupMomentBasis( config, basis, quad );

    SECTION( "small perturbation from isotropic" ) {
        Vector u( nTotalEntries, 0.1 );
        u[0] = 1.0;
        Vector alpha( nTotalEntries, 0.0 );
        optimizer->Solve( alpha, u, momentBasis );
        Vector uRecons( nTotalEntries, 0.0 );
        optimizer->ReconstructMoments( uRecons, alpha, momentBasis );
        REQUIRE( std::fabs( norm( uRecons - u ) ) < config->GetNewtonOptimizerEpsilon() );
    }

    SECTION( "isotropic moment vector" ) {
        // u = (1, 0, 0, ...) should yield alpha close to 0
        Vector u( nTotalEntries, 0.0 );
        u[0] = 1.0;
        Vector alpha( nTotalEntries, 0.0 );
        optimizer->Solve( alpha, u, momentBasis );
        Vector uRecons( nTotalEntries, 0.0 );
        optimizer->ReconstructMoments( uRecons, alpha, momentBasis );
        REQUIRE( std::fabs( norm( uRecons - u ) ) < config->GetNewtonOptimizerEpsilon() );
    }

    delete optimizer;
    delete quad;
    delete basis;
    delete config;
}

TEST_CASE( "Part Regularized Newton - moment reconstruction", "[optimizers_extended]" ) {
    std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/optimizers/unit_optimizerPartRegularizedNewton.cfg";
    Config* config       = new Config( filename );
    SphericalBase* basis = SphericalBase::Create( config );
    QuadratureBase* quad = QuadratureBase::Create( config );
    OptimizerBase* optimizer = OptimizerBase::Create( config );

    unsigned nTotalEntries = basis->GetBasisSize();
    VectorVector momentBasis = SetupMomentBasis( config, basis, quad );

    // Test with different moment vectors
    Vector u( nTotalEntries, 0.3 );
    u[0] = 1.0;
    Vector alpha( nTotalEntries, 0.0 );
    optimizer->Solve( alpha, u, momentBasis );

    Vector uRecons( nTotalEntries, 0.0 );
    optimizer->ReconstructMoments( uRecons, alpha, momentBasis );
    REQUIRE( std::fabs( norm( uRecons - u ) ) < config->GetNewtonOptimizerEpsilon() );

    delete optimizer;
    delete quad;
    delete basis;
    delete config;
}
