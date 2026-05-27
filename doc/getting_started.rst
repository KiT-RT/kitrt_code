Getting Started
===============

KiT-RT has two user-facing layers:

.. list-table:: Which tool should I use?
   :header-rows: 1

   * - User goal
     - Use this
     - First command
   * - Run one deterministic solver config
     - ``kitrt_code``
     - ``./build_omp/KiT-RT examples/configs/smoke_test.cfg``
   * - Run parameter sweeps
     - ``CharmKiT``
     - ``charm-kit run lattice --singularity``
   * - Submit SLURM sweeps
     - ``CharmKiT`` plus site ``slurm_template.sh``
     - ``charm-kit submit lattice --cuda``
   * - Extend solver internals
     - ``kitrt_code``
     - See :doc:`developer_guide`

Ten-minute CPU path
-------------------

Run these commands from a fresh clone on a machine with the required CPU
dependencies installed:

.. code-block:: bash

   git clone https://github.com/KiT-RT/kitrt_code.git
   cd kitrt_code
   git submodule update --init --recursive
   cmake -S . -B build_omp -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF
   cmake --build build_omp -j
   ./build_omp/KiT-RT examples/configs/smoke_test.cfg
   python tools/check_smoke_output.py examples/result/smoke_test

Expected result: the checker prints ``PASS`` and the output directory contains
a CSV log plus VTK/VTU volume output. See :doc:`tutorials/smoke_test` for
details.

Container path
--------------

Apptainer is supported through ``KITRT_CONTAINER_RUNTIME=apptainer``.
Singularity remains supported through ``KITRT_CONTAINER_RUNTIME=singularity``.
If your site does not permit root builds, use a prebuilt SIF or a remote pull
URI instead of building containers on the cluster login node.
