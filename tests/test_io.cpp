#include <filesystem>
#include <fstream>

#include "catch.hpp"
#include "common/io.hpp"
#include "common/typedef.hpp"

TEST_CASE( "IO connectivity round-trip", "[io]" ) {
    std::string testDir  = std::string( TESTS_PATH ) + "result/";
    std::string testFile = testDir + "test_connectivity.csv";

    // Ensure output directory exists
    std::filesystem::create_directories( testDir );

    unsigned nCells         = 3;
    unsigned nNodesPerCell  = 3;
    unsigned nDim           = 2;

    // Create test data
    std::vector<std::vector<unsigned>> cellNeighbors( nCells );
    std::vector<std::vector<Vector>> cellInterfaceMidPoints( nCells );
    std::vector<std::vector<Vector>> cellNormals( nCells );
    std::vector<BOUNDARY_TYPE> cellBoundaryTypes( nCells );

    // Fill with known values
    for( unsigned i = 0; i < nCells; ++i ) {
        cellNeighbors[i].resize( nNodesPerCell );
        cellInterfaceMidPoints[i].resize( nNodesPerCell );
        cellNormals[i].resize( nNodesPerCell );
        for( unsigned j = 0; j < nNodesPerCell; ++j ) {
            cellNeighbors[i][j]          = i * nNodesPerCell + j;
            cellInterfaceMidPoints[i][j] = Vector( nDim, 0.0 );
            cellNormals[i][j]            = Vector( nDim, 0.0 );
            for( unsigned k = 0; k < nDim; ++k ) {
                cellInterfaceMidPoints[i][j][k] = ( i + 1 ) * 0.1 + ( j + 1 ) * 0.01 + ( k + 1 ) * 0.001;
                cellNormals[i][j][k]            = ( i + 1 ) * 1.0 + ( j + 1 ) * 0.1 + ( k + 1 ) * 0.01;
            }
        }
    }
    cellBoundaryTypes[0] = DIRICHLET;
    cellBoundaryTypes[1] = NEUMANN;
    cellBoundaryTypes[2] = NONE;

    // Write
    WriteConnecitivityToFile( testFile, cellNeighbors, cellInterfaceMidPoints, cellNormals, cellBoundaryTypes, nCells, nDim );

    // Read back
    std::vector<std::vector<unsigned>> readNeighbors( nCells );
    std::vector<std::vector<Vector>> readMidPoints( nCells );
    std::vector<std::vector<Vector>> readNormals( nCells );
    std::vector<BOUNDARY_TYPE> readBoundaryTypes( nCells );

    LoadConnectivityFromFile( testFile, readNeighbors, readMidPoints, readNormals, readBoundaryTypes, nCells, nNodesPerCell, nDim );

    SECTION( "neighbors match" ) {
        for( unsigned i = 0; i < nCells; ++i ) {
            REQUIRE( readNeighbors[i].size() == cellNeighbors[i].size() );
            for( unsigned j = 0; j < nNodesPerCell; ++j ) {
                REQUIRE( readNeighbors[i][j] == cellNeighbors[i][j] );
            }
        }
    }

    SECTION( "midpoints match" ) {
        for( unsigned i = 0; i < nCells; ++i ) {
            REQUIRE( readMidPoints[i].size() == cellInterfaceMidPoints[i].size() );
            for( unsigned j = 0; j < nNodesPerCell; ++j ) {
                for( unsigned k = 0; k < nDim; ++k ) {
                    REQUIRE( readMidPoints[i][j][k] == Approx( cellInterfaceMidPoints[i][j][k] ).epsilon( 1e-12 ) );
                }
            }
        }
    }

    SECTION( "normals match" ) {
        for( unsigned i = 0; i < nCells; ++i ) {
            REQUIRE( readNormals[i].size() == cellNormals[i].size() );
            for( unsigned j = 0; j < nNodesPerCell; ++j ) {
                for( unsigned k = 0; k < nDim; ++k ) {
                    REQUIRE( readNormals[i][j][k] == Approx( cellNormals[i][j][k] ).epsilon( 1e-12 ) );
                }
            }
        }
    }

    SECTION( "boundary types match" ) {
        REQUIRE( readBoundaryTypes[0] == DIRICHLET );
        REQUIRE( readBoundaryTypes[1] == NEUMANN );
        REQUIRE( readBoundaryTypes[2] == NONE );
    }

    // Cleanup
    std::filesystem::remove( testFile );
}

TEST_CASE( "IO restart solution round-trip", "[io]" ) {
    std::string testDir  = std::string( TESTS_PATH ) + "result/";
    std::string baseFile = testDir + "test_restart";

    // Ensure output directory exists
    std::filesystem::create_directories( testDir );

    // Create test data
    int rank                                = 0;
    int idx_iter                            = 42;
    double totalAbsorptionCenter            = 1.23456789;
    double totalAbsorptionVertical          = 2.34567890;
    double totalAbsorptionHorizontal        = 3.45678901;
    double totalAbsorption                  = 4.56789012;
    unsigned long nCells                    = 5;
    std::vector<double> solution            = { 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0 };
    std::vector<double> scalarFlux          = { 10.1, 10.2, 10.3, 10.4, 10.5 };

    // Write
    WriteRestartSolution( baseFile, solution, scalarFlux, rank, idx_iter, totalAbsorptionCenter, totalAbsorptionVertical,
                          totalAbsorptionHorizontal, totalAbsorption );

    // Read back
    std::vector<double> readSolution;
    std::vector<double> readScalarFlux;
    double readCenter = 0, readVertical = 0, readHorizontal = 0, readTotal = 0;

    int readIter = LoadRestartSolution( baseFile, readSolution, readScalarFlux, rank, nCells, readCenter, readVertical, readHorizontal, readTotal );

    SECTION( "iteration number matches" ) { REQUIRE( readIter == idx_iter ); }

    SECTION( "absorption values match" ) {
        REQUIRE( readCenter == Approx( totalAbsorptionCenter ) );
        REQUIRE( readVertical == Approx( totalAbsorptionVertical ) );
        REQUIRE( readHorizontal == Approx( totalAbsorptionHorizontal ) );
        REQUIRE( readTotal == Approx( totalAbsorption ) );
    }

    SECTION( "solution data matches" ) {
        REQUIRE( readSolution.size() == solution.size() );
        for( unsigned i = 0; i < solution.size(); ++i ) {
            REQUIRE( readSolution[i] == Approx( solution[i] ) );
        }
    }

    SECTION( "scalar flux data matches" ) {
        REQUIRE( readScalarFlux.size() == nCells );
        for( unsigned i = 0; i < nCells; ++i ) {
            REQUIRE( readScalarFlux[i] == Approx( scalarFlux[i] ) );
        }
    }

    // Cleanup
    std::string restartFile = baseFile + "_restart_rank_0";
    std::filesystem::remove( restartFile );
}
