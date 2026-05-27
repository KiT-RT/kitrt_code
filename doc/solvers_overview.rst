Solver overview
===============

This page maps the current solver pathways in the repository to their
implementation files and to relevant numerical background references.

Runtime solver selection
------------------------

KiT-RT selects the execution path in `src/main.cpp`:

- If ``DATA_GENERATOR_MODE = YES``, it runs data generation.
- Otherwise, if ``HPC_SOLVER = YES``, it runs the HPC SN implementation:

  - ``SNSolverHPC`` on CPU (``src/solvers/snsolver_hpc.cpp``)
  - ``SNSolverHPCCUDA`` when CUDA is compiled and a GPU is detected
    (``src/solvers/snsolver_hpc.cu``)

- If ``HPC_SOLVER = NO``, it uses ``SolverBase::Create(...)`` and the standard
  solver factory (``src/solvers/solverbase.cpp``).

Non-HPC solver stack
--------------------

Implemented non-HPC solver classes:

- `SNSolver`
- `PNSolver`
- `MNSolver`
- `MNSolverNormalized`
- `CSDSNSolver`
- `CSDPNSolver`
- `CSDMNSolver`

Code locations:

- `include/solvers/*.hpp`
- `src/solvers/*.cpp`

Numerical background reference for deterministic non-HPC solver families
(:math:`S_N`, :math:`P_N`, and entropy-based moment closures):

- `Structure-preserving neural networks for entropy-based moment closure methods <https://arxiv.org/abs/2205.08417>`_

HPC SN stack
------------

Implemented HPC SN classes:

- `SNSolverHPC` (CPU MPI/OpenMP)
- `SNSolverHPCCUDA` (CUDA backend)

Core files:

- `include/solvers/snsolver_hpc.hpp`
- `src/solvers/snsolver_hpc.cpp`
- `include/solvers/snsolver_hpc_cuda.hpp`
- `src/solvers/snsolver_hpc.cu`

The HPC solver path is designed around large SN systems and benchmark-style
problems such as lattice and hohlraum configurations.

Numerical background reference for the HPC SN benchmark workflow:

- `Reference solutions for linear radiation transport: the Hohlraum and Lattice benchmarks <https://arxiv.org/pdf/2505.17284>`_

Practical config pattern
------------------------

To run the HPC SN path:

.. code-block:: cfg

   SOLVER = SN_SOLVER
   HPC_SOLVER = YES

To run the standard SN path:

.. code-block:: cfg

   SOLVER = SN_SOLVER
   HPC_SOLVER = NO

Reference validation inputs:

- `tests/input/validation_tests/SN_solver`
- `tests/input/validation_tests/SN_solver_hpc`
