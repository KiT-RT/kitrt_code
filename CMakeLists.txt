cmake_minimum_required( VERSION 3.16 )
project( KiT-RT VERSION 0.1.0 LANGUAGES CXX )

### OPTIONS #####################################
option( BUILD_TESTING "builds all available unit tests" OFF )
option( BUILD_GUI "additionally builds a user interface" OFF )
option( BUILD_DOC "builds Doxygen and Sphinx documentation" OFF )
option( BUILD_UNITY "enables unity build for faster compile times" ON )
option( BUILD_CODE_COV "enables compiler option required for code coverage analysis" OFF )
option( BUILD_ML "enables build with tensorflow backend access" OFF )
option( BUILD_MPI "enables build with MPI access" OFF )
option( BUILD_CUDA_HPC "enables CUDA backend for SN HPC solver (MPI rank to GPU mapping)" OFF )
option( BUILD_HIP_HPC "enables HIP/ROCm backend for SN HPC solver (MPI rank to GPU mapping)" OFF )
#################################################


### COMPILER ####################################
set( CMAKE_CXX_STANDARD 17 )
set( CMAKE_CXX_STANDARD_REQUIRED ON )
if( BUILD_CUDA_HPC AND BUILD_HIP_HPC )
    message( FATAL_ERROR "BUILD_CUDA_HPC and BUILD_HIP_HPC cannot both be enabled." )
endif()
if( BUILD_CUDA_HPC )
    enable_language( CUDA )
    if( CMAKE_VERSION VERSION_LESS 3.18 )
        # CMake 3.16 does not ship CUDA17 mappings by default.
        set( CMAKE_CUDA17_STANDARD_COMPILE_OPTION "--std=c++17" )
        set( CMAKE_CUDA17_EXTENSION_COMPILE_OPTION "--std=c++17" )
    endif()
    set( CMAKE_CUDA_STANDARD 17 )
    set( CMAKE_CUDA_STANDARD_REQUIRED ON )
    set( CMAKE_CUDA_EXTENSIONS OFF )
endif()
if( BUILD_HIP_HPC )
    if( CMAKE_VERSION VERSION_LESS 3.21 )
        message( FATAL_ERROR "BUILD_HIP_HPC requires CMake >= 3.21 for HIP language support." )
    endif()
    enable_language( HIP )
    set( CMAKE_HIP_STANDARD 17 )
    set( CMAKE_HIP_STANDARD_REQUIRED ON )
    set( CMAKE_HIP_EXTENSIONS OFF )
endif()
set( KITRT_RELEASE_OPTIONS -march=native -w )
set( KITRT_RELWITHDEBINFO_OPTIONS -march=native -pg -no-pie )
set( KITRT_DEBUG_OPTIONS -Wall -Wextra -Wpedantic )
if( BUILD_UNITY AND NOT BUILD_CODE_COV )
    message( STATUS "Unity build enabled" )
    set( CMAKE_UNITY_BUILD ON )
    set( CMAKE_UNITY_BUILD_BATCH_SIZE 0 )
endif()
#################################################

### LIBRARIES ###################################
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})

find_package( OpenMP REQUIRED )

if( BUILD_CUDA_HPC )
    add_compile_definitions( KITRT_ENABLE_CUDA_HPC )
    if( CMAKE_VERSION VERSION_GREATER_EQUAL 3.17 )
        find_package( CUDAToolkit QUIET )
    endif()
    if( DEFINED CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES )
        include_directories( ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES} )
    elseif( EXISTS "/usr/local/cuda/include" )
        include_directories( /usr/local/cuda/include )
    endif()
    message( STATUS "CUDA HPC solver: enabled" )
else()
    message( STATUS "CUDA HPC solver: disabled" )
endif()

if( BUILD_HIP_HPC )
    add_compile_definitions( KITRT_ENABLE_HIP_HPC )
    find_package( hip REQUIRED CONFIG )
    message( STATUS "HIP HPC solver: enabled" )
else()
    message( STATUS "HIP HPC solver: disabled" )
endif()

message(STATUS "MPI build flag: ${BUILD_MPI}")
if( BUILD_MPI )
    add_definitions(-DIMPORT_MPI)
    find_package( MPI REQUIRED )
    include_directories( ${MPI_INCLUDE_PATH} )
    message(STATUS "C++ compiler: ${CMAKE_CXX_COMPILER}")
    message(STATUS "MPI C++ compiler: ${MPI_CXX_COMPILER}")

endif()

find_package( LAPACK REQUIRED )
include_directories( ${LAPACK_INCLUDE_DIR} )

find_package( BLAS )

find_package( VTK COMPONENTS IOGeometry FiltersCore REQUIRED )

add_compile_definitions( KITRT_PYTHON_PATH="${CMAKE_SOURCE_DIR}/python" )
add_compile_definitions( BLAZE_USE_SHARED_MEMORY_PARALLELIZATION=0 )
message( STATUS "Blaze: Shared memory parallelization disabled" )
if( BLAS_FOUND )
    message( STATUS "Blaze: BLAS mode enabled" )
    add_compile_definitions( BLAZE_BLAS_MODE=1 )
    include_directories( ${BLAS_INCLUDE_DIR} )
else()
    message( STATUS "Blaze: BLAS mode disabled" )
    add_compile_definitions( BLAZE_BLAS_MODE=0 )
endif()
include( blaze-cache-config )

include_directories( ${CMAKE_SOURCE_DIR}/ext/blaze )
include_directories( ${CMAKE_SOURCE_DIR}/ext/cpptoml/include )
include_directories( ${CMAKE_SOURCE_DIR}/ext/spdlog/include )

if( BUILD_MPI )
    set( CORE_LIBRARIES ${LAPACK_LIBRARIES} ${BLAS_LIBRARIES} ${MPI_LIBRARIES} ${VTK_LIBRARIES} OpenMP::OpenMP_CXX -lstdc++fs )
    message( STATUS "MPI: Libraries loaded" )

else()
    set( CORE_LIBRARIES ${LAPACK_LIBRARIES} ${BLAS_LIBRARIES}  ${VTK_LIBRARIES} OpenMP::OpenMP_CXX -lstdc++fs )
endif()

if( BUILD_CUDA_HPC )
    if( TARGET CUDA::cudart )
        list( APPEND CORE_LIBRARIES CUDA::cudart )
    else()
        find_library( CUDART_LIBRARY
                      NAMES cudart
                      HINTS ${CMAKE_CUDA_IMPLICIT_LINK_DIRECTORIES} /usr/local/cuda/lib64 /usr/lib/x86_64-linux-gnu )
        if( NOT CUDART_LIBRARY )
            message( FATAL_ERROR "Could not find CUDA runtime library (cudart)." )
        endif()
        list( APPEND CORE_LIBRARIES ${CUDART_LIBRARY} )
    endif()
endif()

if( BUILD_HIP_HPC )
    if( TARGET hip::host )
        list( APPEND CORE_LIBRARIES hip::host )
    endif()
    if( TARGET hip::device )
        list( APPEND CORE_LIBRARIES hip::device )
    endif()
    if( NOT TARGET hip::host AND NOT TARGET hip::device )
        message( FATAL_ERROR "Could not find HIP runtime targets (hip::host/hip::device)." )
    endif()
endif()


#################################################


### MISC ########################################
execute_process(
    COMMAND git rev-parse HEAD
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE GIT_HASH
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
add_compile_definitions( GIT_HASH="${GIT_HASH}" )
#################################################


### BUILD KIT-RT ################################
file( GLOB_RECURSE SRCS RELATIVE ${CMAKE_SOURCE_DIR} "src/*.cpp" "include/*.h" )
if( BUILD_CUDA_HPC )
    list( APPEND SRCS "src/solvers/snsolver_hpc.cu" "include/solvers/snsolver_hpc_cuda.hpp" )
    # Force nvcc to parse this translation unit as C++17 even if transitive
    # imported target features inject an older fallback standard.
    set_source_files_properties( src/solvers/snsolver_hpc.cu PROPERTIES COMPILE_FLAGS "--std=c++17" )
endif()
if( BUILD_HIP_HPC )
    list( APPEND SRCS "src/solvers/snsolver_hpc.hip" "include/solvers/snsolver_hpc_hip.hpp" )
    set_source_files_properties( src/solvers/snsolver_hpc.hip PROPERTIES LANGUAGE HIP )
endif()
set( EXCLUDE_DIR "/gui/" )
foreach( TMP_PATH ${SRCS} )
    string( FIND ${TMP_PATH} ${EXCLUDE_DIR} EXCLUDE_DIR_FOUND )
    if( NOT ${EXCLUDE_DIR_FOUND} EQUAL -1 )
        list( REMOVE_ITEM SRCS ${TMP_PATH} )
    endif()
endforeach( TMP_PATH )
include_directories( ${CMAKE_SOURCE_DIR}/include )
if( BUILD_ML )
    # Tensorflow
    include_directories( ${CMAKE_SOURCE_DIR}/ext/cppflow/include/ )
    find_library(TENSORFLOW_LIB tensorflow)
    # Specify Path for tensorflow models
    add_compile_definitions( TENSORFLOW_MODEL_PATH="${CMAKE_SOURCE_DIR}/tfmodels" )
endif()
add_executable( ${CMAKE_PROJECT_NAME} ${SRCS} ${EXT_SRCS} )
if( BUILD_ML )
    target_compile_definitions( ${CMAKE_PROJECT_NAME} PUBLIC BUILD_ML )
    target_link_libraries( ${CMAKE_PROJECT_NAME} ${CORE_LIBRARIES} ${TENSORFLOW_LIB})
endif()
target_link_libraries( ${CMAKE_PROJECT_NAME} ${CORE_LIBRARIES} )
if( BUILD_CUDA_HPC )
    set_target_properties(
        ${CMAKE_PROJECT_NAME}
        PROPERTIES CUDA_STANDARD 17 CUDA_STANDARD_REQUIRED ON CUDA_EXTENSIONS OFF
    )
endif()
if( BUILD_HIP_HPC )
    set_target_properties(
        ${CMAKE_PROJECT_NAME}
        PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED ON HIP_EXTENSIONS OFF
    )
endif()
target_compile_options( ${CMAKE_PROJECT_NAME} PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:DEBUG>>:${KITRT_DEBUG_OPTIONS}>" )
target_compile_options( ${CMAKE_PROJECT_NAME} PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:RELWITHDEBINFO>>:${KITRT_RELWITHDEBINFO_OPTIONS}>" )
target_compile_options( ${CMAKE_PROJECT_NAME} PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:RELEASE>>:${KITRT_RELEASE_OPTIONS}>" )
#################################################

### BUILD UNIT TESTS ############################
if( BUILD_TESTING )
    include( CTest )
    set( CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/ext/Catch2/contrib ${CMAKE_MODULE_PATH} )
    include( Catch )
    set( CATCH_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/ext/Catch2/single_include/catch2 )
    add_compile_definitions( BUILD_TESTING )
    add_compile_definitions( TESTS_PATH="${CMAKE_SOURCE_DIR}/tests/" )
    add_library( Catch INTERFACE )
    target_include_directories( Catch INTERFACE ${CATCH_INCLUDE_DIR} )
    file( GLOB_RECURSE TEST_SRCS RELATIVE ${CMAKE_SOURCE_DIR} "tests/*.cpp" )
    list( REMOVE_ITEM SRCS "src/main.cpp" )
    if( BUILD_ML )
        # Tensorflow
        include_directories( ${CMAKE_SOURCE_DIR}/ext/cppflow/include/ )
        find_library(TENSORFLOW_LIB tensorflow)
        # Specify Path for tensorflow models
        add_compile_definitions( TENSORFLOW_MODEL_PATH="${CMAKE_SOURCE_DIR}/tfmodels" )
    endif()
    add_executable( unit_tests ${TEST_SRCS} ${SRCS} ${EXT_SRCS} )
    if( BUILD_ML )
        message("Tensorflow backend activated")
        target_compile_definitions(unit_tests PUBLIC BUILD_ML )
        target_link_libraries( unit_tests ${CORE_LIBRARIES} ${TENSORFLOW_LIB})
    else()
        message("Tensorflow backend deactivated")
    endif()
    target_compile_definitions( unit_tests PUBLIC BUILD_TESTING )
    target_compile_definitions( unit_tests PUBLIC TESTS_PATH="${CMAKE_SOURCE_DIR}/tests/" )
    target_link_libraries( unit_tests Catch ${CORE_LIBRARIES} )
    if( BUILD_CUDA_HPC )
        set_target_properties(
            unit_tests
            PROPERTIES CUDA_STANDARD 17 CUDA_STANDARD_REQUIRED ON CUDA_EXTENSIONS OFF
        )
    endif()
    if( BUILD_HIP_HPC )
        set_target_properties(
            unit_tests
            PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED ON HIP_EXTENSIONS OFF
        )
    endif()
    target_compile_options( unit_tests PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:DEBUG>>:${KITRT_DEBUG_OPTIONS}>" )
    if( BUILD_CODE_COV )
        if( CMAKE_COMPILER_IS_GNUCXX )
            set( CODE_COVERAGE_OPTIONS --coverage -g -O0 -w )
            target_compile_options( unit_tests PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:DEBUG>>:${CODE_COVERAGE_OPTIONS}>" )
            target_link_libraries( unit_tests Catch gcov )
        else()
            message( FATAL_ERROR "Code coverage is currently only supported for gcc!" )
        endif()
    else()
        target_link_libraries( unit_tests Catch )
    endif()
    target_compile_options( unit_tests PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:RELWITHDEBINFO>>:${KITRT_RELWITHDEBINFO_OPTIONS}>" )
    target_compile_options( unit_tests PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:RELEASE>>:${KITRT_RELEASE_OPTIONS}>" )
    catch_discover_tests( unit_tests )
endif()
#################################################


### BUILD GUI ###################################
if( BUILD_GUI )
    find_package( Qt5 COMPONENTS Core Widgets Gui OpenGL REQUIRED )
    find_package( VTK COMPONENTS vtkGUISupportQt vtkInteractionStyle vtkInteractionWidgets vtkRenderingAnnotation vtkRenderingCore vtkRenderingFreeType vtkRenderingOpenGL2 REQUIRED )
    include_directories( ${CMAKE_SOURCE_DIR}/include/gui )
    file( GLOB_RECURSE GUI_SRCS RELATIVE ${CMAKE_SOURCE_DIR} "src/gui/*" )
    file( GLOB_RECURSE GUI_INCL RELATIVE ${CMAKE_SOURCE_DIR} "include/gui/*" )
    add_executable( ${CMAKE_PROJECT_NAME}_gui ${SRCS} ${EXT_SRCS} ${GUI_SRCS} ${GUI_INCL})
    target_compile_definitions( ${CMAKE_PROJECT_NAME}_gui PUBLIC BUILD_GUI )
    set_target_properties( ${CMAKE_PROJECT_NAME}_gui PROPERTIES AUTOMOC ON )
    set_target_properties( ${CMAKE_PROJECT_NAME}_gui PROPERTIES AUTOUIC ON )
    set_target_properties( ${CMAKE_PROJECT_NAME}_gui PROPERTIES AUTORCC ON )
    set( GUI_LIBRARIES Qt5::Core Qt5::Widgets Qt5::Gui Qt5::OpenGL ${VTK_LIBRARIES} )
    target_link_libraries( ${CMAKE_PROJECT_NAME}_gui ${CORE_LIBRARIES} ${GUI_LIBRARIES} )
    set_target_properties( ${CMAKE_PROJECT_NAME}_gui PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin" )
    target_compile_options( ${CMAKE_PROJECT_NAME}_gui PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:DEBUG>>:${KITRT_DEBUG_OPTIONS}>" )
    target_compile_options( ${CMAKE_PROJECT_NAME}_gui PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:RELWITHDEBINFO>>:${KITRT_RELWITHDEBINFO_OPTIONS}>" )
    target_compile_options( ${CMAKE_PROJECT_NAME}_gui PUBLIC "$<$<AND:$<COMPILE_LANGUAGE:CXX>,$<CONFIG:RELEASE>>:${KITRT_RELEASE_OPTIONS}>" )
endif()
#################################################

### BUILD DOCUMENTATION #########################
if( BUILD_DOC )
    find_package( Doxygen REQUIRED )
    find_package( Sphinx REQUIRED )

    file( GLOB_RECURSE DOC_HEADER RELATIVE ${CMAKE_SOURCE_DIR} "include/*.hpp" )

    set( DOXYGEN_INPUT_DIR ${PROJECT_SOURCE_DIR} )
    set( DOXYGEN_OUTPUT_DIR ${CMAKE_CURRENT_BINARY_DIR}/docs/doxygen )
    set( DOXYGEN_INDEX_FILE ${DOXYGEN_OUTPUT_DIR}/xml/index.xml )
    set( DOXYFILE_IN ${CMAKE_CURRENT_SOURCE_DIR}/doc/Doxyfile.in )
    set( DOXYFILE_OUT ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile )
    configure_file( ${DOXYFILE_IN} ${DOXYFILE_OUT} @ONLY )
    file( MAKE_DIRECTORY ${DOXYGEN_OUTPUT_DIR} )
    add_custom_command( OUTPUT ${DOXYGEN_INDEX_FILE}
                        DEPENDS ${DOC_HEADER}
                        COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYFILE_OUT}
                        MAIN_DEPENDENCY ${DOXYFILE_OUT} ${DOXYFILE_IN}
                        COMMENT "Generating documentaion with Doxygen"
                        VERBATIM )
    add_custom_target( Doxygen ALL DEPENDS ${DOXYGEN_INDEX_FILE} )

    set( SPHINX_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/doc )
    set( SPHINX_BUILD ${CMAKE_CURRENT_BINARY_DIR}/docs/sphinx )
    set( SPHINX_INDEX_FILE ${SPHINX_BUILD}/index.html )
    add_custom_command( OUTPUT ${SPHINX_INDEX_FILE}
                        COMMAND ${SPHINX_EXECUTABLE} ${SPHINX_SOURCE} ${SPHINX_BUILD}
                        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                        DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/doc/index.rst ${DOXYGEN_INDEX_FILE}
                        MAIN_DEPENDENCY ${SPHINX_SOURCE}/conf.py
                        COMMENT "Converting documentation from Doxygen to Sphinx" )

    add_custom_target( Sphinx ALL DEPENDS ${SPHINX_INDEX_FILE} )
endif()
#################################################
