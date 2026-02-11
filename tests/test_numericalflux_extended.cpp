#include <numeric>

#include "catch.hpp"
#include "common/typedef.hpp"
#include "fluxes/upwindflux.hpp"

TEST_CASE( "upwind flux extended tests", "[numericalflux_extended]" ) {
    UpwindFlux g;

    SECTION( "FluxXZ scalar - upwind selection" ) {
        // FluxXZ uses Omega[0]*n[0] + Omega[2]*n[1]
        Vector omega( 3, 0.0 );
        omega[0] = 1.0;
        omega[1] = 0.0;    // y component ignored
        omega[2] = 0.5;

        Vector n( 2, 0.0 );
        n[0] = 1.0;
        n[1] = 1.0;

        double psiL = 2.0;
        double psiR = 5.0;

        // inner = 1.0*1.0 + 0.5*1.0 = 1.5 > 0 => use psiL
        double result = g.FluxXZ( omega, psiL, psiR, n );
        REQUIRE( result == Approx( 1.5 * psiL ) );

        // Flip normal to make inner negative
        Vector nFlip( 2, 0.0 );
        nFlip[0] = -1.0;
        nFlip[1] = -1.0;
        double resultFlip = g.FluxXZ( omega, psiL, psiR, nFlip );
        REQUIRE( resultFlip == Approx( -1.5 * psiR ) );
    }

    SECTION( "FluxXZ scalar - symmetry" ) {
        // F(omega, psiL, psiR, n) = -F(omega, psiR, psiL, -n)
        Vector omega( 3, 0.0 );
        omega[0] = 0.7;
        omega[1] = 0.3;    // ignored
        omega[2] = -0.4;

        Vector n( 2, 0.0 );
        n[0] = 0.5;
        n[1] = -0.8;

        double psiL = 3.0;
        double psiR = 7.0;

        double fPlus  = g.FluxXZ( omega, psiL, psiR, n );
        double fMinus = g.FluxXZ( omega, psiR, psiL, -n );
        REQUIRE( std::fabs( fPlus + fMinus ) < 1e-12 );
    }

    SECTION( "FluxXZ scalar - consistency" ) {
        // When psiL == psiR, flux = inner * psi
        Vector omega( 3, 0.0 );
        omega[0] = 0.6;
        omega[1] = 99.0;    // ignored
        omega[2] = -0.3;

        Vector n( 2, 0.0 );
        n[0] = 1.2;
        n[1] = -0.7;

        double psi   = 4.5;
        double inner  = omega[0] * n[0] + omega[2] * n[1];
        double result = g.FluxXZ( omega, psi, psi, n );
        REQUIRE( result == Approx( inner * psi ) );
    }

    SECTION( "Flux1D scalar - upwind selection" ) {
        // Flux1D uses only Omega[0]*n[0]
        Vector omega( 1, 0.0 );
        omega[0] = 2.0;

        Vector n( 1, 0.0 );
        n[0] = 1.0;

        double psiL = 3.0;
        double psiR = 7.0;

        // inner = 2.0 > 0 => use psiL
        double result = g.Flux1D( omega, psiL, psiR, n );
        REQUIRE( result == Approx( 2.0 * psiL ) );

        // Negative direction
        n[0]   = -1.0;
        result = g.Flux1D( omega, psiL, psiR, n );
        // inner = -2.0 < 0 => use psiR
        REQUIRE( result == Approx( -2.0 * psiR ) );
    }

    SECTION( "Flux1D scalar - symmetry" ) {
        Vector omega( 1, 0.0 );
        omega[0] = -1.5;
        Vector n( 1, 0.0 );
        n[0] = 0.8;

        double psiL = 2.0;
        double psiR = 5.0;

        double fPlus  = g.Flux1D( omega, psiL, psiR, n );
        double fMinus = g.Flux1D( omega, psiR, psiL, -n );
        REQUIRE( std::fabs( fPlus + fMinus ) < 1e-12 );
    }

    SECTION( "Flux1D matrix - Steger-Warming" ) {
        // 2x2 system: Flux1D uses only x-direction
        Matrix AxP( 2, 2, 0.0 );
        Matrix AxM( 2, 2, 0.0 );
        AxP( 0, 0 ) = 1.0;
        AxM( 1, 1 ) = -1.0;

        Vector psiL{ 3.0, 4.0 };
        Vector psiR{ 1.0, 2.0 };

        // Positive normal
        Vector nPos( 1, 0.0 );
        nPos[0] = 1.0;
        Vector resultPos = g.Flux1D( AxP, AxM, psiL, psiR, nPos );
        // n[0]>0: result = n[0]*(AxP*psiL + AxM*psiR)
        Vector expectedPos = 1.0 * ( AxP * psiL + AxM * psiR );
        REQUIRE( blaze::norm( resultPos - expectedPos ) < 1e-12 );

        // Negative normal
        Vector nNeg( 1, 0.0 );
        nNeg[0] = -1.0;
        Vector resultNeg = g.Flux1D( AxP, AxM, psiL, psiR, nNeg );
        // n[0]<0: result = n[0]*(AxP*psiR + AxM*psiL)
        Vector expectedNeg = -1.0 * ( AxP * psiR + AxM * psiL );
        REQUIRE( blaze::norm( resultNeg - expectedNeg ) < 1e-12 );
    }

    SECTION( "FluxXZ matrix - Steger-Warming" ) {
        // FluxXZ matrix uses AxPlus/AxMinus for x and AzPlus/AzMinus for y-normal
        Matrix AxP( 2, 2, 0.0 );
        Matrix AxM( 2, 2, 0.0 );
        Matrix AyP( 2, 2, 0.0 );    // ignored
        Matrix AyM( 2, 2, 0.0 );    // ignored
        Matrix AzP( 2, 2, 0.0 );
        Matrix AzM( 2, 2, 0.0 );

        AxP( 0, 0 ) = 1.0;
        AxM( 1, 1 ) = -0.5;
        AzP( 0, 1 ) = 0.3;
        AzM( 1, 0 ) = -0.2;

        Vector psiL{ 2.0, 3.0 };
        Vector psiR{ 5.0, 6.0 };

        // Both normals positive
        Vector n( 2, 0.0 );
        n[0] = 0.5;
        n[1] = 0.8;

        Vector result = g.FluxXZ( AxP, AxM, AyP, AyM, AzP, AzM, psiL, psiR, n );

        // Expected: n[0]*(AxP*psiL + AxM*psiR) + n[1]*(AzP*psiL + AzM*psiR)
        Vector expected = n[0] * ( AxP * psiL + AxM * psiR ) + n[1] * ( AzP * psiL + AzM * psiR );
        REQUIRE( blaze::norm( result - expected ) < 1e-12 );
    }

    SECTION( "FluxXZ matrix - symmetry" ) {
        Matrix AxP( 2, 2, 0.0 );
        Matrix AxM( 2, 2, 0.0 );
        Matrix AyP( 2, 2, 0.0 );
        Matrix AyM( 2, 2, 0.0 );
        Matrix AzP( 2, 2, 0.0 );
        Matrix AzM( 2, 2, 0.0 );

        AxP( 0, 0 ) = 1.0;
        AxM( 1, 1 ) = -1.0;
        AzP( 0, 0 ) = 0.5;
        AzM( 1, 1 ) = -0.5;

        Vector psiL{ 1.0, 2.0 };
        Vector psiR{ 3.0, 4.0 };
        Vector n( 2, 0.0 );
        n[0] = 0.7;
        n[1] = -0.3;

        Vector fPlus  = g.FluxXZ( AxP, AxM, AyP, AyM, AzP, AzM, psiL, psiR, n );
        Vector fMinus = g.FluxXZ( AxP, AxM, AyP, AyM, AzP, AzM, psiR, psiL, -n );
        REQUIRE( blaze::norm( fPlus + fMinus ) < 1e-12 );
    }

    SECTION( "FluxVanLeer" ) {
        Matrix Ax( 2, 2, 0.0 );
        Matrix AxAbs( 2, 2, 0.0 );
        Matrix Ay( 2, 2, 0.0 );     // unused
        Matrix AyAbs( 2, 2, 0.0 );  // unused
        Matrix Az( 2, 2, 0.0 );
        Matrix AzAbs( 2, 2, 0.0 );

        Ax( 0, 0 )    = 1.0;
        Ax( 1, 1 )    = -0.5;
        AxAbs( 0, 0 ) = 1.0;
        AxAbs( 1, 1 ) = 0.5;
        Az( 0, 0 )    = 0.3;
        Az( 1, 1 )    = -0.2;
        AzAbs( 0, 0 ) = 0.3;
        AzAbs( 1, 1 ) = 0.2;

        Vector psiL{ 2.0, 3.0 };
        Vector psiR{ 5.0, 6.0 };
        Vector n( 2, 0.0 );
        n[0] = 0.7;
        n[1] = 0.4;

        Vector resultFlux( 2, 0.0 );
        g.FluxVanLeer( Ax, AxAbs, Ay, AyAbs, Az, AzAbs, psiL, psiR, n, resultFlux );

        // Expected: 0.5 * ( n[0] * (Ax*(psiL+psiR) - AxAbs*(psiR-psiL)) + n[1] * (Az*(psiL+psiR) - AzAbs*(psiR-psiL)) )
        Vector expected = 0.5 * ( n[0] * ( Ax * ( psiL + psiR ) - AxAbs * ( psiR - psiL ) ) +
                                  n[1] * ( Az * ( psiL + psiR ) - AzAbs * ( psiR - psiL ) ) );
        REQUIRE( blaze::norm( resultFlux - expected ) < 1e-12 );
    }

    SECTION( "FluxVanLeer - consistency" ) {
        // When psiL == psiR, difference term vanishes: flux = 0.5 * (n[0]*Ax + n[1]*Az) * 2*psi = (n[0]*Ax + n[1]*Az)*psi
        Matrix Ax( 2, 2, 0.0 );
        Matrix AxAbs( 2, 2, 0.0 );
        Matrix Ay( 2, 2, 0.0 );
        Matrix AyAbs( 2, 2, 0.0 );
        Matrix Az( 2, 2, 0.0 );
        Matrix AzAbs( 2, 2, 0.0 );

        Ax( 0, 0 )    = 2.0;
        AxAbs( 0, 0 ) = 2.0;
        Az( 1, 1 )    = 1.5;
        AzAbs( 1, 1 ) = 1.5;

        Vector psi{ 3.0, 4.0 };
        Vector n( 2, 0.0 );
        n[0] = 0.6;
        n[1] = 0.9;

        Vector resultFlux( 2, 0.0 );
        g.FluxVanLeer( Ax, AxAbs, Ay, AyAbs, Az, AzAbs, psi, psi, n, resultFlux );

        Vector expected = ( n[0] * Ax + n[1] * Az ) * psi;
        REQUIRE( blaze::norm( resultFlux - expected ) < 1e-12 );
    }

    SECTION( "vectorized Flux" ) {
        // Test the vectorized Flux that accumulates over quadrature points
        unsigned nq = 3;
        VectorVector quadPts( nq );
        quadPts[0] = Vector{ 1.0, 0.0 };
        quadPts[1] = Vector{ 0.0, 1.0 };
        quadPts[2] = Vector{ -1.0, 0.0 };

        Vector psiL{ 2.0, 3.0, 4.0 };
        Vector psiR{ 5.0, 6.0, 7.0 };
        Vector flux( nq, 0.0 );
        Vector n{ 1.0, 0.0 };    // normal in x direction

        g.Flux( quadPts, psiL, psiR, flux, n, nq );

        // Point 0: inner = 1*1 + 0*0 = 1 > 0 => flux[0] += 1*psiL[0] = 2
        // Point 1: inner = 0*1 + 1*0 = 0 <= 0 => flux[1] += 0*psiR[1] = 0
        // Point 2: inner = -1*1 + 0*0 = -1 < 0 => flux[2] += -1*psiR[2] = -7
        REQUIRE( flux[0] == Approx( 2.0 ) );
        REQUIRE( flux[1] == Approx( 0.0 ) );
        REQUIRE( flux[2] == Approx( -7.0 ) );
    }

    SECTION( "vectorized Flux - accumulation" ) {
        // Verify flux accumulates (+=) rather than assigns
        unsigned nq = 2;
        VectorVector quadPts( nq );
        quadPts[0] = Vector{ 1.0, 0.0 };
        quadPts[1] = Vector{ -1.0, 0.0 };

        Vector psiL{ 1.0, 1.0 };
        Vector psiR{ 1.0, 1.0 };
        Vector flux{ 10.0, 20.0 };    // pre-existing values
        Vector n{ 1.0, 0.0 };

        g.Flux( quadPts, psiL, psiR, flux, n, nq );

        // Point 0: inner=1 > 0, flux[0] += 1*1 = 11
        // Point 1: inner=-1 < 0, flux[1] += -1*1 = 19
        REQUIRE( flux[0] == Approx( 11.0 ) );
        REQUIRE( flux[1] == Approx( 19.0 ) );
    }
}
