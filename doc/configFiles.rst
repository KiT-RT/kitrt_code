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
- `AIRCAVITY_1D`, `WATERPHANTOM`, `RADIATIONCT`
- `MELTINGCUBE`, `MELTINGCUBE_1D`
- `STARMAP_VALIDATION`
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
