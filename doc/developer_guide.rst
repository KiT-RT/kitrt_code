Developer Guide
===============

Coding style
------------

Please follow the project naming conventions used throughout the codebase:

- class members commonly use leading underscore (for example `_foo`)
- methods use upper camel case (for example `GetSettings()`)
- compound names use camel case (for example `GetAllCellsAdjacentTo`)

Format code with the repository style file:

- `.clang-format`

Build and test workflow
-----------------------

A typical local developer workflow is:

.. code-block:: bash

   cmake -S . -B build_dev -DCMAKE_BUILD_TYPE=Debug -DBUILD_TESTING=ON
   cmake --build build_dev -j
   ./build_dev/unit_tests
   ctest --test-dir build_dev --output-on-failure

Documentation build
-------------------

A local Doxygen/Sphinx build uses the active CMake build directory for generated
Doxygen XML:

.. code-block:: bash

   python -m pip install -r doc/requirements.txt
   cmake -S . -B build_doc -DCMAKE_BUILD_TYPE=Release -DBUILD_DOC=ON -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_HIP_HPC=OFF -DBUILD_ML=OFF
   cmake --build build_doc -j

Open ``build_doc/docs/sphinx/index.html`` to inspect the generated docs.

CI
--

The repository uses GitHub Actions for build and test checks. Before opening a
PR, run local builds/tests and verify that new dependencies are reflected in the
build configuration and container setups used by CI.
