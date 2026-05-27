Smoke Test
==========

The smoke test is a tiny checkerboard :math:`S_N` run intended to confirm that
a local CPU build can parse configs, read a mesh, run the solver, and write
logs/output. It does not validate scientific accuracy beyond basic sanity
checks.

Build and run
-------------

This path requires the CPU build dependencies from :doc:`../installation`,
including BLAS, LAPACK, VTK, OpenMP, and Python 3.10+ for the checker.

.. code-block:: bash

   cmake -S . -B build_omp -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF
   cmake --build build_omp -j
   ./build_omp/KiT-RT examples/configs/smoke_test.cfg
   python tools/check_smoke_output.py examples/result/smoke_test

Expected output
---------------

- Runtime should be short on a laptop-scale CPU build.
- ``examples/result/smoke_test/`` should contain at least one ``.vtk`` or ``.vtu`` file.
- ``examples/result/smoke_test/logs/`` should contain at least one ``.csv`` log file.
- The checker should report ``PASS`` with a finite, non-negative mass.
- No checked output file should contain a ``nan`` marker.

Common failures
---------------

- ``MESH_FILE`` not found: run from the repository root and use ``examples/configs/smoke_test.cfg`` unchanged first.
- Missing BLAS/LAPACK/VTK/OpenMP libraries: install the development packages or use a container build.
- No CSV log: inspect solver stderr/stdout; the run likely failed before history output was written.
