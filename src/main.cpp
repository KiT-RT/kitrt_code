/*! @file: main.cpp
 *  @brief Main method to call the KiT-RT solver suite
 *  @author: J. Kusch, S. Schotthöfer, P. Stammer, J. Wolters, T. Xiao
 *  @version: 0.1
 */

#ifdef IMPORT_MPI
#include <mpi.h>
#endif
#include <omp.h>
#include <string>

#include "common/config.hpp"
#include "common/io.hpp"
#include "datagenerator/datageneratorbase.hpp"
#include "solvers/snsolver_hpc.hpp"
#ifdef KITRT_ENABLE_CUDA_HPC
#include <cuda_runtime.h>
#include "solvers/snsolver_hpc_cuda.hpp"
#endif
#include "solvers/solverbase.hpp"

#ifdef BUILD_GUI
#include "mainwindow.h"
#include <QApplication>
#endif

int main( int argc, char** argv ) {
#ifdef BUILD_GUI
    QApplication app( argc, argv );
    MainWindow mw;
    mw.show();
    return app.exec();
#else
// wchar_t* program = Py_DecodeLocale( argv[0], NULL );
// Py_SetProgramName( program );
#ifdef IMPORT_MPI
    MPI_Init( &argc, &argv );
    int rank;
    MPI_Comm_rank( MPI_COMM_WORLD, &rank );
    if ( rank == 0 ) {
        printf( "| KiT-RT compiled with MPI and OpenMP parallelization\n" );
    }
#endif
#ifndef IMPORT_MPI
    printf( "| KiT-RT compiled with OpenMP, but without MPI parallelization\n" );
#endif

    std::string filename = ParseArguments( argc, argv );

    // CD  Load Settings from File
    Config* config = new Config( filename );

    // Print input file and run info to file
    PrintLogHeader( filename );

    if( config->GetDataGeneratorMode() ) {
        // Build Data generator
        DataGeneratorBase* datagen = DataGeneratorBase::Create( config );
        // Generate Data and export
        datagen->ComputeTrainingData();
    }
    else {
        // Build solver
        if( config->GetHPC() ) {
#ifdef KITRT_ENABLE_CUDA_HPC
            int deviceCount = 0;
            if( cudaGetDeviceCount( &deviceCount ) == cudaSuccess && deviceCount > 0 ) {
                SNSolverHPCCUDA* solver = new SNSolverHPCCUDA( config );
                solver->Solve();
                delete solver;
            }
            else {
                SNSolverHPC* solver = new SNSolverHPC( config );
                solver->Solve();
                delete solver;
            }
#else
            SNSolverHPC* solver = new SNSolverHPC( config );
            solver->Solve();
            delete solver;
#endif
        }
        else {
            SolverBase* solver = SolverBase::Create( config );
            // Run solver and export
            solver->Solve();
            solver->PrintVolumeOutput();
            delete solver;
        }
    }

    delete config;
#ifdef IMPORT_MPI
    MPI_Finalize();
#endif

    return EXIT_SUCCESS;
#endif
}
