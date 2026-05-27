.. _installation:

Installation
============

Requirements
------------

Required:

- C++17 compiler
- CMake 3.16+
- OpenMP
- LAPACK (and optionally BLAS)
- VTK
- Git

Optional features:

- MPI (`-DBUILD_MPI=ON`)
- CUDA backend for the HPC SN solver (`-DBUILD_CUDA_HPC=ON`)
- TensorFlow backend for neural closure (`-DBUILD_ML=ON`)

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
   cmake -S . -B build_cuda -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=ON -DBUILD_ML=OFF
   cmake --build build_cuda -j

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
