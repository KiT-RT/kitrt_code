===========================================================
KiT-RT: A kinetic transport solver for radiation therapy
===========================================================

KiT-RT is an open source C++ framework for deterministic radiation transport.
It targets linear Boltzmann-type models with finite-volume discretizations and
supports both standard solver paths and an HPC-oriented :math:`S_N` workflow.

The source code is publicly available on `GitHub <https://github.com/KiT-RT/kitrt_code>`_.

Supported solver families
-------------------------

- :math:`S_N` (discrete ordinates)
- :math:`P_N` (spherical harmonics moments)
- :math:`M_N` (entropy-closure moments, including normalized variant)
- Continuous slowing-down (CSD) variants for :math:`S_N`, :math:`P_N`, and :math:`M_N`
- HPC :math:`S_N` path (CPU MPI/OpenMP and optional CUDA backend)

For a solver-focused overview (including numerical background references and
code mapping), see :doc:`solvers_overview`.

Table of contents
-----------------

.. toctree::
   :maxdepth: 1

   status
   getting_started
   installation
   tutorials/smoke_test
   troubleshooting
   release
   configFiles
   solvers_overview
   physics
   implement
   cpp_doc
   developer_guide
   authors
