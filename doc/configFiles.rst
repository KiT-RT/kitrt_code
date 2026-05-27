Configuration files
===================

KiT-RT uses a simple key-value format parsed by `Config` (see
`src/common/config.cpp`). It is not strict TOML.

Syntax
------

- One option per line: `KEY = VALUE`
- Lists use parentheses: `SCREEN_OUTPUT = (ITER, MASS, RMS_FLUX)`
- Comments often use `%` in existing examples
- Boolean values use `YES/NO`
- Relative paths are resolved from the config file directory

Minimal example
---------------

.. code-block:: cfg

   OUTPUT_DIR = ../../../result
   OUTPUT_FILE = checkerboard_SN
   LOG_DIR = ../../../result/logs
   MESH_FILE = ../../mesh_files/checkerboard.su2

   PROBLEM = CHECKERBOARD
   SOLVER = SN_SOLVER
   CFL_NUMBER = 0.5
   TIME_FINAL = 0.4

   BC_DIRICHLET = ( void )

   QUAD_TYPE = GAUSS_LEGENDRE_TENSORIZED_2D
   QUAD_ORDER = 4

   VOLUME_OUTPUT = (MINIMAL)

Core options
------------

File and paths:

- `OUTPUT_DIR`, `OUTPUT_FILE`, `LOG_DIR`, `LOG_FILE`
- `MESH_FILE`, `CT_FILE`, `DATA_DIR`
- `LOAD_RESTART_SOLUTION`, `SAVE_RESTART_SOLUTION_FREQUENCY`

Solver setup:

- `SOLVER`, `PROBLEM`, `HPC_SOLVER`
- `CFL_NUMBER`, `TIME_FINAL`, `RECONS_ORDER`, `TIME_INTEGRATION_ORDER`
- `MAX_MOMENT_SOLVER`, `SPATIAL_DIM`, `SN_ALL_GAUSS_PTS`

Physics and closures:

- `KERNEL`, `SPHERICAL_BASIS`
- `ENTROPY_FUNCTIONAL`, `ENTROPY_OPTIMIZER`
- `REGULARIZER_GAMMA`, `NEWTON_*`, `NEURAL_MODEL_*`

Boundary and quadrature:

- `BC_DIRICHLET`, `BC_NEUMANN`
- `QUAD_TYPE`, `QUAD_ORDER`

Output control:

- `VOLUME_OUTPUT`, `VOLUME_OUTPUT_FREQUENCY`
- `SCREEN_OUTPUT`, `SCREEN_OUTPUT_FREQUENCY`
- `HISTORY_OUTPUT`, `HISTORY_OUTPUT_FREQUENCY`

Current enum values (from code)
--------------------------------

These names come from ``include/common/globalconstants.hpp`` and are the strings
accepted by the config parser.

`SOLVER`:

- `SN_SOLVER`
- `PN_SOLVER`
- `MN_SOLVER`
- `MN_SOLVER_NORMALIZED`
- `CSD_SN_SOLVER`
- `CSD_PN`
- `CSD_MN`

`PROBLEM`:

- `LINESOURCE`, `LINESOURCE_1D`
- `CHECKERBOARD`, `CHECKERBOARD_1D`
- `STARMAP_VALIDATION`, `AIRCAVITY_1D`
- `WATERPHANTOM`, `WATERPHANTOM_1D`, `RADIATIONCT`
- `MELTINGCUBE`, `MELTINGCUBE_1D`
- `HOHLRAUM`, `SYMMETRIC_HOHLRAUM`, `QUARTER_HOHLRAUM`
- `LATTICE`, `HALF_LATTICE`

`QUAD_TYPE`:

- `MONTE_CARLO`
- `GAUSS_LEGENDRE_TENSORIZED`, `GAUSS_LEGENDRE_TENSORIZED_2D`, `GAUSS_LEGENDRE_1D`
- `LEVEL_SYMMETRIC`, `LEBEDEV`, `LDFESA`, `TESSALATION`, `PRODUCT`
- `MIDPOINT_1D`, `MIDPOINT_2D`, `MIDPOINT_3D`
- `RECTANGULAR_1D`, `RECTANGULAR_2D`, `RECTANGULAR_3D`

`KERNEL`:

- `ISOTROPIC`, `ISOTROPIC_1D`

`SPHERICAL_BASIS`:

- `SPHERICAL_HARMONICS`
- `SPHERICAL_MONOMIALS`
- `SPHERICAL_MONOMIALS_ROTATED`

`ENTROPY_FUNCTIONAL`:

- `QUADRATIC`
- `MAXWELL_BOLTZMANN`
- `BOSE_EINSTEIN`
- `FERMI_DIRAC`

`ENTROPY_OPTIMIZER`:

- `NEWTON`
- `REGULARIZED_NEWTON`
- `PART_REGULARIZED_NEWTON`
- `REDUCED_NEWTON`
- `REDUCED_PART_REGULARIZED_NEWTON`
- `ML`

`VOLUME_OUTPUT`:

- `ANALYTIC`, `MINIMAL`, `MOMENTS`, `DUAL_MOMENTS`, `MEDICAL`

`SCREEN_OUTPUT` and `HISTORY_OUTPUT`:

- `ITER`, `WALL_TIME`, `SIM_TIME`, `MASS`, `RMS_FLUX`
- `VTK_OUTPUT`, `CSV_OUTPUT`
- `CUR_OUTFLOW`, `TOTAL_OUTFLOW`, `CUR_OUTFLOW_P1`, `TOTAL_OUTFLOW_P1`
- `CUR_OUTFLOW_P2`, `TOTAL_OUTFLOW_P2`, `MAX_OUTFLOW`
- `CUR_PARTICLE_ABSORPTION`, `TOTAL_PARTICLE_ABSORPTION`, `MAX_PARTICLE_ABSORPTION`
- `TOTAL_PARTICLE_ABSORPTION_CENTER`, `TOTAL_PARTICLE_ABSORPTION_VERTICAL`, `TOTAL_PARTICLE_ABSORPTION_HORIZONTAL`
- `PROBE_MOMENT_TIME_TRACE`, `VAR_ABSORPTION_GREEN`, `ABSORPTION_GREEN_BLOCK`
- `AVG_ABSORPTION_GREEN_BLOCK_INTEGRATED`, `VAR_ABSORPTION_GREEN_BLOCK_INTEGRATED`, `ABSORPTION_GREEN_LINE`

`SAMPLER_NAME`:

- `CLASSIFICATION_SAMPLER`
- `REGRESSION_SAMPLER`

HPC SN config pattern
---------------------

The HPC path is selected with:

- `SOLVER = SN_SOLVER`
- `HPC_SOLVER = YES`

Example (from validation inputs):

.. code-block:: cfg

   PROBLEM = LATTICE
   SOLVER = SN_SOLVER
   HPC_SOLVER = YES
   RECONS_ORDER = 2
   TIME_INTEGRATION_ORDER = 2
   QUAD_TYPE = GAUSS_LEGENDRE_TENSORIZED_2D
   QUAD_ORDER = 4

Reference configs
-----------------

Validated examples are under:

- `tests/input/validation_tests/SN_solver`
- `tests/input/validation_tests/PN_solver`
- `tests/input/validation_tests/MN_solver`
- `tests/input/validation_tests/CSD_PN_solver`
- `tests/input/validation_tests/CSD_MN_solver`
- `tests/input/validation_tests/SN_solver_hpc`
