#include "catch.hpp"
#include "toolboxes/textprocessingtoolbox.hpp"

// Include reconstructor functions (declared in header after the class)
#include "toolboxes/reconstructor.hpp"

TEST_CASE( "text processing utilities", "[utilities]" ) {

    SECTION( "Split" ) {
        auto tokens = TextProcessingToolbox::Split( "hello,world,test", ',' );
        REQUIRE( tokens.size() == 3 );
        REQUIRE( tokens[0] == "hello" );
        REQUIRE( tokens[1] == "world" );
        REQUIRE( tokens[2] == "test" );

        // Single element (no delimiter found)
        auto single = TextProcessingToolbox::Split( "hello", ',' );
        REQUIRE( single.size() == 1 );
        REQUIRE( single[0] == "hello" );
    }

    SECTION( "StringEndsWith" ) {
        REQUIRE( TextProcessingToolbox::StringEndsWith( "hello.vtk", ".vtk" ) );
        REQUIRE( TextProcessingToolbox::StringEndsWith( "test", "test" ) );
        REQUIRE_FALSE( TextProcessingToolbox::StringEndsWith( "hello.vtk", ".su2" ) );
        REQUIRE_FALSE( TextProcessingToolbox::StringEndsWith( "hi", "longer" ) );
        REQUIRE( TextProcessingToolbox::StringEndsWith( "anything", "" ) );
    }

    SECTION( "GetTrailingNumber" ) {
        REQUIRE( TextProcessingToolbox::GetTrailingNumber( "NDIME= 2" ) == 2 );
        REQUIRE( TextProcessingToolbox::GetTrailingNumber( "NPOIN= 100" ) == 100 );
        REQUIRE( TextProcessingToolbox::GetTrailingNumber( "test42" ) == 42 );
    }

    SECTION( "StringToUpperCase" ) {
        std::string s = "hello World";
        TextProcessingToolbox::StringToUpperCase( s );
        REQUIRE( s == "HELLO WORLD" );

        std::string already = "UPPER";
        TextProcessingToolbox::StringToUpperCase( already );
        REQUIRE( already == "UPPER" );
    }

    SECTION( "DoubleToScientificNotation" ) {
        // Should produce uppercase 'E' with 6 decimal places
        std::string result = TextProcessingToolbox::DoubleToScientificNotation( 1.5e3 );
        REQUIRE( result.find( 'E' ) != std::string::npos );

        // Check known value
        std::string r2 = TextProcessingToolbox::DoubleToScientificNotation( 0.0 );
        REQUIRE( r2.find( 'E' ) != std::string::npos );
    }

    SECTION( "DoubleToScientificNotation2" ) {
        // Should produce scientific notation with 4 decimal precision
        std::string result = TextProcessingToolbox::DoubleToScientificNotation2( 1.0 );
        REQUIRE( result.find( 'e' ) != std::string::npos );
    }
}

TEST_CASE( "slope limiter functions", "[utilities]" ) {

    SECTION( "FortSign" ) {
        // FortSign(a, b) returns |a| if b > 0, -|a| if b < 0, 0 if b == 0
        REQUIRE( FortSign( 3.0, 1.0 ) == Approx( 3.0 ) );
        REQUIRE( FortSign( 3.0, -1.0 ) == Approx( -3.0 ) );
        REQUIRE( FortSign( -3.0, 1.0 ) == Approx( 3.0 ) );
        REQUIRE( FortSign( -3.0, -1.0 ) == Approx( -3.0 ) );
        REQUIRE( FortSign( 5.0, 0.0 ) == Approx( 0.0 ) );
        REQUIRE( FortSign( -5.0, 0.0 ) == Approx( 0.0 ) );
    }

    SECTION( "LMinMod" ) {
        // Same sign: returns sign * min(|sL|, |sR|)
        REQUIRE( LMinMod( 2.0, 3.0 ) == Approx( 2.0 ) );
        REQUIRE( LMinMod( 3.0, 2.0 ) == Approx( 2.0 ) );
        // Different signs: returns 0
        REQUIRE( LMinMod( 2.0, -3.0 ) == Approx( 0.0 ) );
        REQUIRE( LMinMod( -2.0, 3.0 ) == Approx( 0.0 ) );
        // Both negative: returns -min(|sL|, |sR|)
        REQUIRE( LMinMod( -2.0, -3.0 ) == Approx( -2.0 ) );
    }

    SECTION( "LVanLeer" ) {
        // Same sign: returns harmonic mean type
        double result = LVanLeer( 2.0, 4.0 );
        // Expected: (1+1) * 2 * 4 / (2 + 4 + eps) ~= 2*8/6 ~= 2.667
        REQUIRE( result == Approx( 2.0 * 2.0 * 4.0 / ( 2.0 + 4.0 + 0.0000001 ) ).epsilon( 1e-5 ) );
        // Different signs: approximately 0
        REQUIRE( std::fabs( LVanLeer( 2.0, -4.0 ) ) < 1e-4 );
    }

    SECTION( "LVanAlbaba" ) {
        // Symmetric: LVanAlbaba(a, b) should equal LVanAlbaba(b, a) for positive values
        double r1 = LVanAlbaba( 2.0, 3.0 );
        double r2 = LVanAlbaba( 3.0, 2.0 );
        REQUIRE( r1 == Approx( r2 ) );
        // Known value: (sL^2*sR + sL*sR^2) / (sL^2 + sR^2 + eps)
        double expected = ( 4.0 * 3.0 + 2.0 * 9.0 ) / ( 4.0 + 9.0 + 0.0000001 );
        REQUIRE( r1 == Approx( expected ).epsilon( 1e-5 ) );
    }

    SECTION( "LSuperBee" ) {
        // When sR is between 0.5*sL and 2*sL, returns max
        double r1 = LSuperBee( 2.0, 3.0 );
        // 3.0 >= 0.5*2.0 = 1.0 and 3.0 <= 2.0*2.0 = 4.0, so returns max(2,3) = 3
        REQUIRE( r1 == Approx( 3.0 ) );

        // Different signs: returns 0
        REQUIRE( LSuperBee( 2.0, -1.0 ) == Approx( 0.0 ) );
    }

    SECTION( "LWENOJS" ) {
        // Currently returns 0 for all inputs
        REQUIRE( LWENOJS( 1.0 ) == Approx( 0.0 ) );
        REQUIRE( LWENOJS( -5.0 ) == Approx( 0.0 ) );
        REQUIRE( LWENOJS( 0.0 ) == Approx( 0.0 ) );
    }
}
