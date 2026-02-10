#include "catch.hpp"
#include "entropies/maxwellboltzmannentropy.hpp"
#include "entropies/quadraticentropy.hpp"

TEST_CASE( "quadratic entropy", "[entropy]" ) {
    QuadraticEntropy eta;

    SECTION( "known values" ) {
        REQUIRE( eta.Entropy( 3.0 ) == Approx( 4.5 ) );
        REQUIRE( eta.Entropy( 0.0 ) == Approx( 0.0 ) );
        REQUIRE( eta.Entropy( -2.0 ) == Approx( 2.0 ) );

        REQUIRE( eta.EntropyPrime( 3.0 ) == Approx( 3.0 ) );
        REQUIRE( eta.EntropyPrime( 0.0 ) == Approx( 0.0 ) );

        REQUIRE( eta.EntropyDual( 3.0 ) == Approx( 4.5 ) );
        REQUIRE( eta.EntropyDual( 0.0 ) == Approx( 0.0 ) );

        REQUIRE( eta.EntropyPrimeDual( 3.0 ) == Approx( 3.0 ) );

        // Hessian of dual is constant 1 for quadratic entropy
        REQUIRE( eta.EntropyHessianDual( 0.0 ) == Approx( 1.0 ) );
        REQUIRE( eta.EntropyHessianDual( 100.0 ) == Approx( 1.0 ) );
        REQUIRE( eta.EntropyHessianDual( -5.0 ) == Approx( 1.0 ) );
    }

    SECTION( "self-duality" ) {
        // Quadratic entropy is self-dual: eta(z) == eta*(z)
        for( double z = -5.0; z <= 5.0; z += 0.5 ) {
            REQUIRE( eta.Entropy( z ) == Approx( eta.EntropyDual( z ) ) );
        }
    }

    SECTION( "derivative consistency" ) {
        // Numerical derivative of Entropy should match EntropyPrime
        double h = 1e-7;
        for( double z = -3.0; z <= 3.0; z += 0.5 ) {
            double numDeriv = ( eta.Entropy( z + h ) - eta.Entropy( z - h ) ) / ( 2.0 * h );
            REQUIRE( numDeriv == Approx( eta.EntropyPrime( z ) ).epsilon( 1e-5 ) );
        }
    }

    SECTION( "identity: eta_prime and eta_prime_dual are inverses" ) {
        // For quadratic entropy, eta'(z) = z and eta*'(y) = y (identity)
        for( double z = -3.0; z <= 3.0; z += 0.5 ) {
            REQUIRE( eta.EntropyPrimeDual( eta.EntropyPrime( z ) ) == Approx( z ) );
        }
    }
}

TEST_CASE( "Maxwell-Boltzmann entropy", "[entropy]" ) {
    MaxwellBoltzmannEntropy eta;

    SECTION( "known values" ) {
        // eta(1) = 1*log(1) - 1 = -1
        REQUIRE( eta.Entropy( 1.0 ) == Approx( -1.0 ) );
        // eta'(1) = log(1) = 0
        REQUIRE( eta.EntropyPrime( 1.0 ) == Approx( 0.0 ) );
        // eta*(0) = exp(0) = 1
        REQUIRE( eta.EntropyDual( 0.0 ) == Approx( 1.0 ) );
        // eta*'(0) = exp(0) = 1
        REQUIRE( eta.EntropyPrimeDual( 0.0 ) == Approx( 1.0 ) );
        // Hessian of dual at y: exp(y)
        REQUIRE( eta.EntropyHessianDual( 0.0 ) == Approx( 1.0 ) );
        REQUIRE( eta.EntropyHessianDual( 1.0 ) == Approx( std::exp( 1.0 ) ) );
    }

    SECTION( "Legendre-Fenchel duality" ) {
        // eta(z) + eta*(eta'(z)) = z * eta'(z)
        for( double z = 0.5; z <= 5.0; z += 0.5 ) {
            double lhs = eta.Entropy( z ) + eta.EntropyDual( eta.EntropyPrime( z ) );
            double rhs = z * eta.EntropyPrime( z );
            REQUIRE( lhs == Approx( rhs ).epsilon( 1e-10 ) );
        }
    }

    SECTION( "derivative consistency" ) {
        // Numerical derivative of Entropy should match EntropyPrime
        double h = 1e-7;
        for( double z = 0.5; z <= 5.0; z += 0.5 ) {
            double numDeriv = ( eta.Entropy( z + h ) - eta.Entropy( z - h ) ) / ( 2.0 * h );
            REQUIRE( numDeriv == Approx( eta.EntropyPrime( z ) ).epsilon( 1e-5 ) );
        }
    }

    SECTION( "convexity of dual" ) {
        // Hessian of dual should be positive for all y
        for( double y = -5.0; y <= 5.0; y += 0.5 ) {
            REQUIRE( eta.EntropyHessianDual( y ) > 0.0 );
        }
    }

    SECTION( "eta_prime and eta_prime_dual are inverses" ) {
        // eta'(z) = log(z), eta*'(y) = exp(y)
        // eta*'(eta'(z)) = exp(log(z)) = z
        for( double z = 0.5; z <= 5.0; z += 0.5 ) {
            REQUIRE( eta.EntropyPrimeDual( eta.EntropyPrime( z ) ) == Approx( z ).epsilon( 1e-10 ) );
        }
    }

    SECTION( "dual values" ) {
        // eta*(y) = exp(y) for Maxwell-Boltzmann
        for( double y = -3.0; y <= 3.0; y += 0.5 ) {
            REQUIRE( eta.EntropyDual( y ) == Approx( std::exp( y ) ) );
            REQUIRE( eta.EntropyPrimeDual( y ) == Approx( std::exp( y ) ) );
            REQUIRE( eta.EntropyHessianDual( y ) == Approx( std::exp( y ) ) );
        }
    }
}
