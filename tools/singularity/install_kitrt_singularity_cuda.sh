#!/usr/bin/env bash
set -euo pipefail

cd ../../
mkdir -p build_singularity_cuda
cd build_singularity_cuda
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=ON -DBUILD_HIP_HPC=OFF -DBUILD_ML=OFF ..
make -j
