#include <numeric>
#include <memory>

#include "catch.hpp"
#include "common/config.hpp"
#include "kernels/isotropic.hpp"
#include "quadratures/quadraturebase.hpp"

TEST_CASE( "test all scattering kernels", "[kernel]" ) {
    std::string filename = std::string( TESTS_PATH ) + "input/unit_tests/kernels/unit_kernel.cfg";

    // Load Settings from File
    auto config = std::make_unique<Config>( filename );
    auto quad   = std::unique_ptr<QuadratureBase>( QuadratureBase::Create( config.get() ) );    //@TODO: swap out for different quadrature rule

    SECTION( "isotropic scattering kernel" ) {

        auto weights = quad->GetWeights();
        Isotropic kernel( quad.get() );
        Matrix scatteringMatrix = kernel.GetScatteringKernel();
        bool errorWithinBounds  = true;
        for( unsigned i = 0; i < scatteringMatrix.rows(); ++i ) {
            for( unsigned j = 0; j < scatteringMatrix.columns(); ++j ) {
                if( std::fabs( scatteringMatrix( i, j ) - ( weights[j] / ( 4 * M_PI ) ) ) > std::numeric_limits<double>::epsilon() )
                    errorWithinBounds = false;
            }
        }
        REQUIRE( errorWithinBounds );
    }
}
