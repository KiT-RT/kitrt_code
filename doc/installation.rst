.. _installation:

Installation
============

Requirements
------------

Required for the documented CPU build and smoke test:

- C++17 compiler
- CMake 3.16+
- Git and initialized submodules
- Python 3.10+ for the smoke-test checker
- OpenMP
- BLAS and LAPACK development libraries
- VTK development libraries

On Ubuntu systems, the CPU prerequisites are typically provided by packages like:

.. code-block:: bash

   sudo apt-get update
   sudo apt-get install -y build-essential cmake git python3 libopenblas-dev liblapack-dev libvtk9-dev

Package names vary by distribution and cluster module stack. The important CMake
packages are OpenMP, BLAS, LAPACK, and VTK.

Optional features:

- MPI (`-DBUILD_MPI=ON`; for example Open MPI or MPICH)
- CUDA backend for the HPC SN solver (`-DBUILD_CUDA_HPC=ON`)
- HIP/ROCm backend for the HPC SN solver (`-DBUILD_HIP_HPC=ON`; requires CMake 3.21+)
- TensorFlow backend for neural closure (`-DBUILD_ML=ON`)
- Documentation build (`-DBUILD_DOC=ON`; requires Doxygen plus `doc/requirements.txt`)

Get the source and submodules
-----------------------------

.. code-block:: bash

   git clone https://github.com/KiT-RT/kitrt_code.git
   cd kitrt_code
   git submodule update --init --recursive

Build examples
--------------

Run all commands from the repository root. For a complete first-run walkthrough,
see :doc:`tutorials/smoke_test`.

CPU/OpenMP build (no MPI, no CUDA, no ML):

.. code-block:: bash

   mkdir -p build_omp
   cmake -S . -B build_omp -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF
   cmake --build build_omp -j

MPI/OpenMP build for HPC SN:

.. code-block:: bash

   mkdir -p build_mpi
   cmake -S . -B build_mpi -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF
   cmake --build build_mpi -j

MPI + CUDA build for HPC SN CUDA backend:

.. code-block:: bash

   mkdir -p build_cuda
   cmake -S . -B build_cuda -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=ON -DBUILD_HIP_HPC=OFF -DBUILD_ML=OFF
   cmake --build build_cuda -j

MPI + ROCm/HIP build for HPC SN HIP backend:

.. code-block:: bash

   mkdir -p build_rocm
   cmake -S . -B build_rocm -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=OFF -DBUILD_HIP_HPC=ON -DBUILD_ML=OFF
   cmake --build build_rocm -j

Build with tests:

.. code-block:: bash

   mkdir -p build_test
   cmake -S . -B build_test -DCMAKE_BUILD_TYPE=Debug -DBUILD_TESTING=ON
   cmake --build build_test -j

Run
---

The executable is produced inside the build directory (for example, `build_omp/KiT-RT`).

Single-process smoke test:

.. code-block:: bash

   ./build_omp/KiT-RT examples/configs/smoke_test.cfg
   python tools/check_smoke_output.py examples/result/smoke_test

Single-process validation config:

.. code-block:: bash

   ./build_omp/KiT-RT tests/input/validation_tests/SN_solver/checkerboard_SN.cfg

MPI run (HPC SN config):

.. code-block:: bash

   mpirun -np 4 ./build_mpi/KiT-RT tests/input/validation_tests/SN_solver_hpc/lattice_hpc_200_cpu_order2.cfg

If `HPC_SOLVER = YES` and CUDA support is compiled in, KiT-RT uses the CUDA HPC
solver when a GPU is available and falls back to CPU HPC otherwise.

Tests
-----

.. code-block:: bash

   ./build_test/unit_tests
   ctest --test-dir build_test --output-on-failure

Documentation
-------------

Install the Sphinx Python dependencies and build Doxygen plus Sphinx through
CMake:

.. code-block:: bash

   python -m pip install -r doc/requirements.txt
   cmake -S . -B build_doc -DCMAKE_BUILD_TYPE=Release -DBUILD_DOC=ON -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_HIP_HPC=OFF -DBUILD_ML=OFF
   cmake --build build_doc -j

The generated HTML entry point is `build_doc/docs/sphinx/index.html`.
