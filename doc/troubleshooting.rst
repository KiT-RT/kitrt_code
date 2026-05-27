Troubleshooting
===============

.. list-table:: Common symptoms
   :header-rows: 1

   * - Symptom
     - Likely cause
     - Fix
   * - ``VTK not found`` during CMake configure
     - Missing VTK development package
     - Install your distro's VTK dev package or use a container.
   * - ``BLAS not found`` or ``LAPACK not found``
     - Missing BLAS/LAPACK implementation
     - Install OpenBLAS/LAPACK development packages and rerun CMake.
   * - Smoke checker reports missing output directory
     - Solver did not complete or was launched from the wrong path
     - Run from the repository root and inspect solver output.
   * - ``python tools/check_smoke_output.py`` fails with syntax errors
     - Python is older than the checker requires
     - Use Python 3.10 or newer.
   * - ``mpirun`` works locally but fails on a cluster
     - Container MPI does not match host MPI or launcher policy
     - Use the site-recommended MPI/container binding and update the SLURM template.
   * - CUDA container sees no GPU
     - Missing GPU allocation or missing ``--nv``
     - Request a GPU allocation and run through Apptainer/Singularity with ``--nv``.
   * - No permission to build SIF
     - Cluster disallows root container builds
     - Pull or provide a prebuilt SIF; do not build as root on the login node.

When opening an issue, include the exact command, KiT-RT commit, CMake options,
compiler version, container runtime, and the first failing log excerpt.
