#!/usr/bin/env bash
set -euo pipefail

cd ../../
ROCM_CLANGXX="${ROCM_CLANGXX:-/opt/rocm-7.2.0/lib/llvm/bin/clang++}"
if [[ ! -x "${ROCM_CLANGXX}" && -x "/opt/rocm/lib/llvm/bin/clang++" ]]; then
    ROCM_CLANGXX="/opt/rocm/lib/llvm/bin/clang++"
fi

if [[ ! -x "${ROCM_CLANGXX}" ]]; then
    echo "Could not find ROCm clang++ compiler. Set ROCM_CLANGXX to a valid path." >&2
    exit 1
fi

mkdir -p build_singularity_rocm72
cd build_singularity_rocm72
if [[ -f CMakeCache.txt ]]; then
    CACHED_CXX="$(grep '^CMAKE_CXX_COMPILER:FILEPATH=' CMakeCache.txt | cut -d= -f2- || true)"
    if [[ -n "${CACHED_CXX}" && "${CACHED_CXX}" != "${ROCM_CLANGXX}" ]]; then
        echo "Resetting CMake cache because compiler changed: ${CACHED_CXX} -> ${ROCM_CLANGXX}"
        rm -rf CMakeCache.txt CMakeFiles
    fi
fi

cmake -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_COMPILER="${ROCM_CLANGXX}" \
      -DCMAKE_HIP_COMPILER="${ROCM_CLANGXX}" \
      -DBUILD_MPI=ON \
      -DBUILD_CUDA_HPC=OFF \
      -DBUILD_HIP_HPC=ON \
      -DBUILD_ML=OFF ..
make -j
