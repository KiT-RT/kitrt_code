#!/usr/bin/env bash
set -euo pipefail

cd ../../
mkdir -p build_singularity_rocm72
cd build_singularity_rocm72
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_HIP_HPC=ON -DBUILD_ML=OFF ..
make -j
