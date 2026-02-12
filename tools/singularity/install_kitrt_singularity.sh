#!/usr/bin/env bash
set -euo pipefail

cd ../../
mkdir -p build_singularity
cd build_singularity
cmake ..
make -j
