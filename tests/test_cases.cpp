#include <algorithm>
#include <cctype>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <vtkCellData.h>
#include <vtkSmartPointer.h>
#include <vtkUnstructuredGrid.h>
#include <vtkUnstructuredGridReader.h>

#include "catch.hpp"

#include "common/config.hpp"
#include "datagenerator/datageneratorbase.hpp"
#include "solvers/snsolver_hpc.hpp"
#include "solvers/solverbase.hpp"

using vtkUnstructuredGridReaderSP = vtkSmartPointer<vtkUnstructuredGridReader>;

std::vector<double> readVTKFile( std::string filename ) {
    auto reader = vtkUnstructuredGridReaderSP::New();
    reader->SetFileName( filename.c_str() );
    reader->ReadAllScalarsOn();
    reader->ReadAllVectorsOn();
    reader->Update();

    auto grid         = reader->GetOutput();
    unsigned numCells = grid->GetNumberOfCells();
    auto cellData     = grid->GetCellData()->GetArray( 0 );

    std::vector<double> data( numCells, 0.0 );

    for( unsigned i = 0; i < numCells; ++i ) {
        data[i] = cellData->GetTuple1( static_cast<int>( i ) );
    }

    return data;
}

TEST_CASE( "SN_SOLVER", "[validation_tests]" ) {
    std::string sn_fileDir = "input/validation_tests/SN_solver/";
    SECTION( "checkerboard" ) {
        std::string config_file_name = std::string( TESTS_PATH ) + sn_fileDir + "checkerboard_SN.cfg";

        Config* config = new Config( config_file_name );
        // config->SetForcedConnectivity( true );

        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();

        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/checkerboard_SN.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + sn_fileDir + "checkerboard_SN_reference.vtk" );

        double eps = 1e-3;
        REQUIRE( test.size() == reference.size() );
        bool errorWithinBounds = true;
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) {
                errorWithinBounds = false;
                // std::cout << std::fabs( test[i] - reference[i] ) << "here\n";
            }
        }
        REQUIRE( errorWithinBounds );
        delete solver;
        delete config;
    }

    SECTION( "linesource" ) {
        std::string config_file_name = std::string( TESTS_PATH ) + sn_fileDir + "linesource_SN.cfg";

        Config* config     = new Config( config_file_name );
        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();

        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/linesource_SN.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + sn_fileDir + "linesource_SN_reference.vtk" );

        double eps = 1e-3;
        REQUIRE( test.size() == reference.size() );
        bool errorWithinBounds = true;
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
        delete solver;
        delete config;
    }
}

TEST_CASE( "PN_SOLVER", "[validation_tests]" ) {
    std::string pn_fileDir = "input/validation_tests/PN_solver/";
    SECTION( "checkerboard" ) {
        std::string config_file_name = std::string( TESTS_PATH ) + pn_fileDir + "checkerboard_PN.cfg";

        Config* config     = new Config( config_file_name );
        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();

        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/checkerboard_PN.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + pn_fileDir + "checkerboard_PN_reference.vtk" );

        double eps             = 1e-3;
        bool errorWithinBounds = true;
        REQUIRE( test.size() == reference.size() );
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
        delete solver;
        delete config;
    }

    SECTION( "linesource" ) {
        std::string config_file_name = std::string( TESTS_PATH ) + pn_fileDir + "linesource_PN.cfg";

        Config* config     = new Config( config_file_name );
        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();

        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/linesource_PN.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + pn_fileDir + "linesource_PN_reference.vtk" );

        double eps             = 1e-3;
        bool errorWithinBounds = true;

        REQUIRE( test.size() == reference.size() );
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
        delete solver;
        delete config;
    }
}

TEST_CASE( "MN_SOLVER", "[validation_tests]" ) {
    std::string mn_fileDir = "input/validation_tests/MN_solver/";

    SECTION( "checkerboard" ) {
        std::string config_file_name = std::string( TESTS_PATH ) + mn_fileDir + "checkerboard_MN.cfg";

        Config* config = new Config( config_file_name );
        // config->SetForcedConnectivity( true );

        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();

        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/checkerboard_MN.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + mn_fileDir + "checkerboard_MN_reference.vtk" );

        double eps             = 1e-3;
        bool errorWithinBounds = true;

        REQUIRE( test.size() == reference.size() );
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
        delete solver;
        delete config;
    }
    SECTION( "linesource" ) {
        // --- Quadratic Entropy
        {
            std::string config_file_name = std::string( TESTS_PATH ) + mn_fileDir + "linesource_MN_Quad.cfg";

            Config* config     = new Config( config_file_name );
            SolverBase* solver = SolverBase::Create( config );
            // config->SetForcedConnectivity( true );

            solver->Solve();
            solver->PrintVolumeOutput();

            auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/linesource_MN_Quad.vtk" );
            auto reference = readVTKFile( std::string( TESTS_PATH ) + mn_fileDir + "linesource_MN_Quad_reference.vtk" );

            double eps             = 1e-3;
            bool errorWithinBounds = true;

            REQUIRE( test.size() == reference.size() );
            for( unsigned i = 0; i < test.size(); ++i ) {
                if( std::fabs( test[i] - reference[i] ) > eps ) {
                    errorWithinBounds = false;
                    std::cout << "Error:" << std::fabs( test[i] - reference[i] ) << "\n";
                }
            }
            REQUIRE( errorWithinBounds );
            delete solver;
            delete config;
        }
    }
    SECTION( "linesource Maxwell Boltzmann" ) {

        {    // ---  Maxwell Boltzmann Entropy ---
            std::string config_file_name = std::string( TESTS_PATH ) + mn_fileDir + "linesource_MN_MB.cfg";

            Config* config = new Config( config_file_name );
            // config->SetForcedConnectivity( true );

            SolverBase* solver = SolverBase::Create( config );

            solver->Solve();
            solver->PrintVolumeOutput();

            auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/linesource_MN_MB.vtk" );
            auto reference = readVTKFile( std::string( TESTS_PATH ) + mn_fileDir + "linesource_MN_MB_reference.vtk" );

            double eps             = 1e-3;
            bool errorWithinBounds = true;

            REQUIRE( test.size() == reference.size() );
            for( unsigned i = 0; i < test.size(); ++i ) {
                if( std::fabs( test[i] - reference[i] ) > eps ) {
                    errorWithinBounds = false;
                    std::cout << "Error:" << std::fabs( test[i] - reference[i] ) << "\n";
                }
            }
            REQUIRE( errorWithinBounds );
            delete solver;
            delete config;
        }
    }
    SECTION( "linesource Maxwell Boltzmann regularized" ) {

        {    // --- Regularized Maxwell Boltzmann Entropy ---
            std::string config_file_name = std::string( TESTS_PATH ) + mn_fileDir + "linesource_MN_MB_regularized.cfg";

            Config* config = new Config( config_file_name );
            // config->SetForcedConnectivity( true );

            SolverBase* solver = SolverBase::Create( config );
            solver->Solve();
            solver->PrintVolumeOutput();

            auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/linesource_MN_MB_regularized.vtk" );
            auto reference = readVTKFile( std::string( TESTS_PATH ) + mn_fileDir + "linesource_MN_MB_regularized_reference.vtk" );

            double eps             = 1e-3;
            bool errorWithinBounds = true;

            REQUIRE( test.size() == reference.size() );
            for( unsigned i = 0; i < test.size(); ++i ) {
                if( std::fabs( test[i] - reference[i] ) > eps ) {
                    errorWithinBounds = false;
                    std::cout << "Error:" << std::fabs( test[i] - reference[i] ) << "\n";
                }
            }
            REQUIRE( errorWithinBounds );
            delete solver;
            delete config;
        }
    }
    // SECTION( "checkerboard neural network" ) {
    //     std::string config_file_name = std::string( TESTS_PATH ) + mn_fileDir + "checkerboard_MN_neural.cfg";
    //
    //    Config* config     = new Config( config_file_name );
    //    SolverBase* solver = SolverBase::Create( config );
    //    solver->Solve();
    //    solver->PrintVolumeOutput();
    //
    //    auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/checkerboard_MN_neural.vtk" );
    //    auto reference = readVTKFile( std::string( TESTS_PATH ) + mn_fileDir + "checkerboard_MN_reference_neural.vtk" );
    //
    //    double eps             = 1e-3;
    //    bool errorWithinBounds = true;
    //
    //    REQUIRE( test.size() == reference.size() );
    //    for( unsigned i = 0; i < test.size(); ++i ) {
    //        if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
    //    }
    //    REQUIRE( errorWithinBounds );
    //    delete solver;
    //    delete config;
    //}
}

TEST_CASE( "CSD_PN_SOLVER", "[validation_tests]" ) {
    std::string csd_sn_fileDir = "input/validation_tests/CSD_PN_solver/";
    SECTION( "starmap validation" ) {

        std::string config_file_name = std::string( TESTS_PATH ) + csd_sn_fileDir + "starmap_validation.cfg";

        Config* config = new Config( config_file_name );
        config->SetForcedConnectivity( true );
        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();
        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/starmap_validation.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + csd_sn_fileDir + "starmap_validation_reference.vtk" );

        double eps = 1e-3;
        REQUIRE( test.size() == reference.size() );
        bool errorWithinBounds = true;
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
        delete solver;
        delete config;
    }
    SECTION( "starmap validation 2nd order" ) {

        std::string config_file_name = std::string( TESTS_PATH ) + csd_sn_fileDir + "starmap_validation_2nd_order.cfg";

        Config* config = new Config( config_file_name );
        config->SetForcedConnectivity( true );

        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();
        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/starmap_validation_2nd.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + csd_sn_fileDir + "starmap_validation_2nd_reference.vtk" );

        double eps = 1e-3;
        REQUIRE( test.size() == reference.size() );
        bool errorWithinBounds = true;
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
        delete solver;
        delete config;
    }
}

TEST_CASE( "CSD_MN_SOLVER", "[validation_tests]" ) {
    std::string csd_mn_fileDir = "input/validation_tests/CSD_MN_solver/";
    /*SECTION( "point source dual density" ) {

        std::string config_file_name = std::string( TESTS_PATH ) + csd_mn_fileDir + "point_source_dual_density.cfg";
        Config* config               = new Config( config_file_name );
        SolverBase* solver           = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();
        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/pointsource_dual_density_MN.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + csd_mn_fileDir + "point_source_dual_density_reference_MN.vtk" );

        double eps = 1e-3;
        REQUIRE( test.size() == reference.size() );
        bool errorWithinBounds = true;
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
    }*/
    /*
    SECTION( "point source dual density 2nd order" ) {

        std::string config_file_name = std::string( TESTS_PATH ) + csd_mn_fileDir + "point_source_dual_density_2nd_order.cfg";

        Config* config     = new Config( config_file_name );
        SolverBase* solver = SolverBase::Create( config );
        solver->Solve();
        solver->PrintVolumeOutput();
        auto test      = readVTKFile( std::string( TESTS_PATH ) + "result/pointsource_dual_density_MN_2nd.vtk" );
        auto reference = readVTKFile( std::string( TESTS_PATH ) + csd_mn_fileDir + "point_source_dual_density_reference_2nd_MN.vtk" );

        double eps = 1e-3;
        REQUIRE( test.size() == reference.size() );
        bool errorWithinBounds = true;
        for( unsigned i = 0; i < test.size(); ++i ) {
            if( std::fabs( test[i] - reference[i] ) > eps ) errorWithinBounds = false;
        }
        REQUIRE( errorWithinBounds );
    }*/
}

// --- Validation Tests Output ---
void tokenize( std::string const& str, const char delim, std::vector<std::string>& out ) {
    size_t start;
    size_t end = 0;

    while( ( start = str.find_first_not_of( delim, end ) ) != std::string::npos ) {
        end = str.find( delim, start );
        out.push_back( str.substr( start, end - start ) );
    }
}

bool parseTokenAsDouble( const std::string& token, double& value ) {
    try {
        size_t parsedChars = 0;
        value              = std::stod( token, &parsedChars );
        while( parsedChars < token.size() && std::isspace( static_cast<unsigned char>( token[parsedChars] ) ) ) {
            parsedChars++;
        }
        return parsedChars == token.size();
    }
    catch( ... ) {
        return false;
    }
}

std::string findNewestCSVFile( const std::string& directory, const std::string& prefix ) {
    namespace fs = std::filesystem;

    if( !fs::exists( directory ) ) {
        return "";
    }

    bool found                                 = false;
    fs::file_time_type newestWrite             = fs::file_time_type::min();
    fs::path newestPath                        = "";
    const bool enforcePrefix                   = !prefix.empty();
    auto selectNewestMatchingFileWithPredicate = [&]( bool usePrefix ) {
        bool localFound                     = false;
        fs::file_time_type localNewestWrite = fs::file_time_type::min();
        fs::path localNewestPath            = "";

        for( const auto& entry : fs::directory_iterator( directory ) ) {
            if( !entry.is_regular_file() || entry.path().extension() != ".csv" ) {
                continue;
            }
            const std::string fileName = entry.path().filename().string();
            if( usePrefix && fileName.rfind( prefix, 0 ) != 0 ) {
                continue;
            }
            if( !localFound || entry.last_write_time() > localNewestWrite ) {
                localFound      = true;
                localNewestWrite = entry.last_write_time();
                localNewestPath = entry.path();
            }
        }
        if( localFound ) {
            found       = true;
            newestWrite = localNewestWrite;
            newestPath  = localNewestPath;
        }
    };

    selectNewestMatchingFileWithPredicate( enforcePrefix );
    if( !found ) {
        selectNewestMatchingFileWithPredicate( false );    // Fallback to newest CSV file in directory
    }

    return found ? newestPath.string() : "";
}

void compareHistoryCSV( const std::string& referenceFile, const std::string& testFile, double absTol = 1e-10, double relTol = 1e-8 ) {
    std::ifstream referenceStream( referenceFile );
    std::ifstream testStream( testFile );
    REQUIRE( referenceStream.is_open() );
    REQUIRE( testStream.is_open() );

    std::string lineRef, lineTest;
    const char delim    = ',';

    // Header row (skip token 0 because it contains runtime timestamp)
    REQUIRE( std::getline( referenceStream, lineRef ) );
    REQUIRE( std::getline( testStream, lineTest ) );

    std::vector<std::string> headerRef;
    std::vector<std::string> headerTest;
    tokenize( lineRef, delim, headerRef );
    tokenize( lineTest, delim, headerTest );

    REQUIRE( headerRef.size() == headerTest.size() );
    REQUIRE( headerRef.size() > 1 );

    std::vector<bool> skipColumn( headerRef.size(), false );
    for( unsigned idx_token = 1; idx_token < headerRef.size(); idx_token++ ) {
        REQUIRE( headerRef[idx_token] == headerTest[idx_token] );
        if( headerRef[idx_token] == "Wall_time_[s]" ) {
            skipColumn[idx_token] = true;    // wall time is machine/runtime dependent
        }
    }

    unsigned lineNumber = 1;
    while( true ) {
        const bool hasRefLine  = static_cast<bool>( std::getline( referenceStream, lineRef ) );
        const bool hasTestLine = static_cast<bool>( std::getline( testStream, lineTest ) );

        if( !hasRefLine || !hasTestLine ) {
            REQUIRE( hasRefLine == hasTestLine );
            break;
        }

        lineNumber++;

        std::vector<std::string> tokensRef;
        std::vector<std::string> tokensTest;
        tokenize( lineRef, delim, tokensRef );
        tokenize( lineTest, delim, tokensTest );

        INFO( "Line " << lineNumber );
        REQUIRE( tokensRef.size() == tokensTest.size() );
        REQUIRE( tokensRef.size() > 1 );

        for( unsigned idx_token = 1; idx_token < tokensRef.size(); idx_token++ ) {    // Skip date/time prefix in first column
            if( skipColumn[idx_token] ) {
                continue;
            }

            double valueRef  = 0.0;
            double valueTest = 0.0;
            bool refNumeric  = parseTokenAsDouble( tokensRef[idx_token], valueRef );
            bool tstNumeric  = parseTokenAsDouble( tokensTest[idx_token], valueTest );

            INFO( "Line " << lineNumber << ", token " << idx_token );
            if( refNumeric && tstNumeric ) {
                double scale = std::max( 1.0, std::max( std::fabs( valueRef ), std::fabs( valueTest ) ) );
                REQUIRE( std::fabs( valueRef - valueTest ) <= absTol + relTol * scale );
            }
            else {
                REQUIRE( tokensRef[idx_token] == tokensTest[idx_token] );
            }
        }
    }
}

TEST_CASE( "SN_SOLVER_HPC_CSV_QOI_VALIDATION", "[validation_tests][hpc]" ) {
    std::string hpcFileDir = "input/validation_tests/SN_solver_hpc/";
    spdlog::drop_all();    // Ensure deterministic logger files for this test case

    SECTION( "lattice_200_cells_all_qois" ) {
        std::string configFileName = std::string( TESTS_PATH ) + hpcFileDir + "lattice_hpc_200.cfg";
        std::string referenceCSV   = std::string( TESTS_PATH ) + hpcFileDir + "lattice_hpc_200_csv_reference";
        std::string resultDir      = std::string( TESTS_PATH ) + "result";
        std::string logDir         = std::string( TESTS_PATH ) + "result/logs";
        std::filesystem::remove_all( resultDir );

        Config* config      = new Config( configFileName );
        SNSolverHPC* solver = new SNSolverHPC( config );
        solver->Solve();

        auto log    = spdlog::get( "event" );
        auto logCSV = spdlog::get( "tabular" );
        log->flush();
        logCSV->flush();

        std::string outputCSV = findNewestCSVFile( logDir, "lattice_hpc_200_output" );
        REQUIRE( !outputCSV.empty() );
        compareHistoryCSV( referenceCSV, outputCSV );

        delete solver;
        delete config;
    }

    SECTION( "symmetric_hohlraum_200_cells_all_qois" ) {
        std::string configFileName = std::string( TESTS_PATH ) + hpcFileDir + "symmetric_hohlraum_hpc_200.cfg";
        std::string referenceCSV   = std::string( TESTS_PATH ) + hpcFileDir + "symmetric_hohlraum_hpc_200_csv_reference";
        std::string resultDir      = std::string( TESTS_PATH ) + "result";
        std::string logDir         = std::string( TESTS_PATH ) + "result/logs";
        std::filesystem::remove_all( resultDir );

        Config* config      = new Config( configFileName );
        SNSolverHPC* solver = new SNSolverHPC( config );
        solver->Solve();

        auto log    = spdlog::get( "event" );
        auto logCSV = spdlog::get( "tabular" );
        log->flush();
        logCSV->flush();

        std::string outputCSV = findNewestCSVFile( logDir, "symmetric_hohlraum_hpc_200_output" );
        REQUIRE( !outputCSV.empty() );
        compareHistoryCSV( referenceCSV, outputCSV );

        delete solver;
        delete config;
    }
}

TEST_CASE( "screen_output", "[output]" ) {
    std::string out_fileDir = "input/validation_tests/output/";
    spdlog::drop_all();    // Make sure to write in own logging file

    std::string config_file_name       = std::string( TESTS_PATH ) + out_fileDir + "validate_logger.cfg";
    std::string screenLoggerReference  = std::string( TESTS_PATH ) + out_fileDir + "validate_logger_reference";
    std::string screenLogger           = std::string( TESTS_PATH ) + "result/logs/validate_logger_output";
    std::string historyLoggerReference = std::string( TESTS_PATH ) + out_fileDir + "validate_logger_csv_reference";
    std::string historyLogger          = std::string( TESTS_PATH ) + "result/logs/validate_logger_output.csv";

    Config* config = new Config( config_file_name );
    config->SetForcedConnectivity( true );

    SolverBase* solver = SolverBase::Create( config );
    solver->Solve();

    // Force Logger to flush
    auto log    = spdlog::get( "event" );
    auto logCSV = spdlog::get( "tabular" );
    log->flush();
    logCSV->flush();
    // --- Read and validate logger ---
    std::ifstream screenLoggerReferenceStream( screenLoggerReference );
    std::ifstream screenLoggerStream( screenLogger );
    std::ifstream historyLoggerReferenceStream( historyLoggerReference );
    std::ifstream historyLoggerStream( historyLogger );

    std::string line, lineRef;
    bool lineValid;
    const char delimScreen = '|';
    const char delimHist   = ',';

    // --- Screen Logger
    while( !screenLoggerReferenceStream.eof() && !screenLoggerStream.eof() ) {
        std::getline( screenLoggerReferenceStream, lineRef );
        std::getline( screenLoggerStream, line );

        // ignore date (before first "|")
        std::vector<std::string> out;
        std::vector<std::string> outRef;
        tokenize( line, delimScreen, out );
        tokenize( lineRef, delimScreen, outRef );

        if( out.size() != outRef.size() ) std::cout << lineRef << "\n" << line << "\n";

        REQUIRE( out.size() == outRef.size() );    // Sanity check
        // token is an colum of the csv
        for( unsigned idx_token = 1; idx_token < out.size(); idx_token++ ) {    // Skip date  ==> start from 1
            lineValid = outRef[idx_token].compare( out[idx_token] ) == 0;
            if( !lineValid ) {
                std::cout << lineRef << "\n" << line << "\n";
            }
            REQUIRE( lineValid );
        }
    }
    bool eqLen = screenLoggerReferenceStream.eof() && screenLoggerStream.eof();
    if( !eqLen ) {
        std::cout << "Files of unequal length!\n";
    }
    REQUIRE( eqLen );    // Files must be of same length

    // --- History Logger
    while( !historyLoggerReferenceStream.eof() && !historyLoggerStream.eof() ) {
        std::getline( historyLoggerReferenceStream, lineRef );
        std::getline( historyLoggerStream, line );
        // ignore date (before first "|")
        std::vector<std::string> out;
        std::vector<std::string> outRef;
        tokenize( line, delimHist, out );
        tokenize( lineRef, delimHist, outRef );

        if( out.size() != outRef.size() ) std::cout << lineRef << "\n" << line << "\n";
        REQUIRE( out.size() == outRef.size() );    // sanity check

        for( unsigned idx_token = 1; idx_token < out.size(); idx_token++ ) {    // Skip date  ==> start from 1
            lineValid = outRef[idx_token].compare( out[idx_token] ) == 0;
            if( !lineValid ) {
                std::cout << lineRef << "\n" << line << "\n";
            }
            REQUIRE( lineValid );
        }
    }
    eqLen = historyLoggerReferenceStream.eof() && historyLoggerStream.eof();
    if( !eqLen ) {
        std::cout << "Files of unequal length!\n";
    }
    REQUIRE( eqLen );    // Files must be of same length

    delete solver;
    delete config;
}

TEST_CASE( "Data Generator Regression", "[dataGen]" ) {
    std::string out_fileDir = "input/validation_tests/dataGenerator/";
    spdlog::drop_all();    // Make sure to write in own logging file

    std::string config_file_name       = std::string( TESTS_PATH ) + out_fileDir + "validate_dataGen_regression.cfg";
    std::string historyLoggerReference = std::string( TESTS_PATH ) + out_fileDir + "validate_dataGen_regression_csv_reference";
    std::string historyLogger          = std::string( TESTS_PATH ) + "result/logs/validate_dataGen.csv";

    // --- Generate Data ---
    // Load Settings from File
    Config* config = new Config( config_file_name );
    // Build Data generator
    DataGeneratorBase* datagen = DataGeneratorBase::Create( config );
    // Generate Data and export
    datagen->ComputeTrainingData();

    // --- Force Logger to flush
    auto log    = spdlog::get( "event" );
    auto logCSV = spdlog::get( "tabular" );
    log->flush();
    logCSV->flush();

    // --- Read and validate logger ---
    std::ifstream historyLoggerReferenceStream( historyLoggerReference );
    std::ifstream historyLoggerStream( historyLogger );

    std::string line, lineRef;
    bool lineValid;
    const char delimHist = ',';

    bool testPassed = true;
    // --- History Logger
    unsigned count = 0;
    while( !historyLoggerReferenceStream.eof() && !historyLoggerStream.eof() && count < 3 ) {
        std::getline( historyLoggerReferenceStream, lineRef );
        std::getline( historyLoggerStream, line );
        // ignore date (before first "|")
        std::vector<std::string> out;
        std::vector<std::string> outRef;
        tokenize( line, delimHist, out );
        tokenize( lineRef, delimHist, outRef );

        if( out.size() != outRef.size() ) {
            std::cout << lineRef << "\n" << line << "\n";
            testPassed = false;
            break;
        }

        for( unsigned idx_token = 1; idx_token < out.size(); idx_token++ ) {    // Skip date  ==> start from 1
            lineValid = outRef[idx_token].compare( out[idx_token] ) == 0;
            if( !lineValid ) {
                std::cout << lineRef << "\n" << line << "\n";
                testPassed = false;
                break;
            }
        }
        count++;
    }
    REQUIRE( testPassed );

    delete datagen;
    delete config;
}

TEST_CASE( "Data Generator Classification", "[dataGen]" ) {
    std::string out_fileDir = "input/validation_tests/dataGenerator/";
    spdlog::drop_all();    // Make sure to write in own logging file

    std::string config_file_name       = std::string( TESTS_PATH ) + out_fileDir + "validate_dataGen_classification.cfg";
    std::string historyLoggerReference = std::string( TESTS_PATH ) + out_fileDir + "validate_dataGen_csv_classification_reference";
    std::string historyLogger          = std::string( TESTS_PATH ) + "result/logs/validate_dataGen_classification.csv";

    // --- Generate Data ---
    // Load Settings from File
    Config* config = new Config( config_file_name );
    // Build Data generator
    DataGeneratorBase* datagen = DataGeneratorBase::Create( config );
    // Generate Data and export
    datagen->ComputeTrainingData();

    // --- Force Logger to flush
    auto log    = spdlog::get( "event" );
    auto logCSV = spdlog::get( "tabular" );
    log->flush();
    logCSV->flush();

    // --- Read and validate logger ---
    std::ifstream historyLoggerReferenceStream( historyLoggerReference );
    std::ifstream historyLoggerStream( historyLogger );

    std::string line, lineRef;
    bool lineValid;
    const char delimHist = ',';

    bool testPassed = true;
    // --- History Logger
    unsigned count = 0;
    while( !historyLoggerReferenceStream.eof() && !historyLoggerStream.eof() && count < 3 ) {
        std::getline( historyLoggerReferenceStream, lineRef );
        std::getline( historyLoggerStream, line );
        // ignore date (before first "|")
        std::vector<std::string> out;
        std::vector<std::string> outRef;
        tokenize( line, delimHist, out );
        tokenize( lineRef, delimHist, outRef );

        if( out.size() != outRef.size() ) {
            std::cout << out.size() << "here\n";
            std::cout << outRef.size() << "here\n";
            std::cout << "here\n";
            std::cout << lineRef << "\n" << line << "\n";
            std::cout << "here\n";
            std::cout << historyLoggerReference;
            testPassed = false;
            break;
        }

        for( unsigned idx_token = 1; idx_token < out.size(); idx_token++ ) {    // Skip date  ==> start from 1
            lineValid = outRef[idx_token].compare( out[idx_token] ) == 0;
            if( !lineValid ) {
                std::cout << lineRef << "\n" << line << "\n";
                testPassed = false;
                break;
            }
        }
        count++;
    }
    REQUIRE( testPassed );

    delete datagen;
    delete config;
}

TEST_CASE( "Data Generator Regularized Regression", "[dataGen]" ) {
    std::string out_fileDir = "input/validation_tests/dataGenerator/";
    spdlog::drop_all();    // Make sure to write in own logging file

    std::string config_file_name       = std::string( TESTS_PATH ) + out_fileDir + "validate_dataGen_regularized_regression.cfg";
    std::string historyLoggerReference = std::string( TESTS_PATH ) + out_fileDir + "validate_dataGen_csv_regularized_reference";
    std::string historyLogger          = std::string( TESTS_PATH ) + "result/logs/validate_dataGen_regularized_regression.csv";

    // --- Generate Data ---
    // Load Settings from File
    Config* config = new Config( config_file_name );
    // Build Data generator
    DataGeneratorBase* datagen = DataGeneratorBase::Create( config );
    // Generate Data and export
    datagen->ComputeTrainingData();

    // --- Force Logger to flush
    auto log    = spdlog::get( "event" );
    auto logCSV = spdlog::get( "tabular" );
    log->flush();
    logCSV->flush();

    // --- Read and validate logger ---
    std::ifstream historyLoggerReferenceStream( historyLoggerReference );
    std::ifstream historyLoggerStream( historyLogger );

    std::string line, lineRef;
    bool lineValid;
    const char delimHist = ',';

    bool testPassed = true;
    // --- History Logger
    unsigned count = 0;
    while( !historyLoggerReferenceStream.eof() && !historyLoggerStream.eof() && count < 3 ) {
        std::getline( historyLoggerReferenceStream, lineRef );
        std::getline( historyLoggerStream, line );
        // ignore date (before first "|")
        std::vector<std::string> out;
        std::vector<std::string> outRef;
        tokenize( line, delimHist, out );
        tokenize( lineRef, delimHist, outRef );

        if( out.size() != outRef.size() ) {
            std::cout << out.size() << "\n";
            std::cout << outRef.size() << "\n";
            std::cout << "---------\n";
            testPassed = false;
            break;
        }

        for( unsigned idx_token = 1; idx_token < out.size(); idx_token++ ) {    // Skip date  ==> start from 1
            lineValid = outRef[idx_token].compare( out[idx_token] ) == 0;
            if( !lineValid ) {
                std::cout << lineRef << "\n" << line << "\n------\n";
                testPassed = false;
                break;
            }
        }
        count++;
    }
    REQUIRE( testPassed );
    delete datagen;
    delete config;
}
