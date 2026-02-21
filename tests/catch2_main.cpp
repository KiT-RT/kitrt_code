#define CATCH_CONFIG_RUNNER
#include "catch.hpp"

// #include <Python.h>
// #define PY_ARRAY_UNIQUE_SYMBOL KITRT_ARRAY_API
#include <filesystem>
#ifdef IMPORT_MPI
#include <mpi.h>
#endif

int main( int argc, char** argv ) {
#ifdef IMPORT_MPI
    int mpiInitialized = 0;
    MPI_Initialized( &mpiInitialized );
    if( !mpiInitialized ) {
        MPI_Init( &argc, &argv );
    }
#endif

    // wchar_t* program = Py_DecodeLocale( argv[0], NULL );
    // Py_SetProgramName( program );
    const int result = Catch::Session().run( argc, argv );
    // if( Py_IsInitialized() ) Py_Finalize();

    std::filesystem::remove_all( std::string( TESTS_PATH ) + "result" );

#ifdef IMPORT_MPI
    int mpiFinalized = 0;
    MPI_Finalized( &mpiFinalized );
    if( !mpiFinalized ) {
        MPI_Finalize();
    }
#endif
    return result;
}
