#!/usr/bin/env bash
set -euo pipefail

detect_hip_dir() {
    local dir

    if [ -n "${hip_DIR:-}" ] && { [ -f "${hip_DIR}/hip-config.cmake" ] || [ -f "${hip_DIR}/hipConfig.cmake" ]; }; then
        printf '%s\n' "${hip_DIR}"
        return 0
    fi

    for dir in /opt/rocm/lib/cmake/hip /opt/rocm-*/lib/cmake/hip; do
        if [ -f "${dir}/hip-config.cmake" ] || [ -f "${dir}/hipConfig.cmake" ]; then
            printf '%s\n' "${dir}"
            return 0
        fi
    done

    return 1
}

cd ../../
mkdir -p build_singularity_rocm72
cd build_singularity_rocm72
cmake_args=(
    -DCMAKE_BUILD_TYPE=Release
    -DBUILD_MPI=ON
    -DBUILD_HIP_HPC=ON
    -DBUILD_ML=OFF
)

if detected_hip_dir="$(detect_hip_dir)"; then
    echo "Detected HIP package config at: ${detected_hip_dir}"
    cmake_args+=( "-Dhip_DIR=${detected_hip_dir}" )
else
    echo "Warning: HIP package config not auto-detected. Configure may fail unless hip_DIR/CMAKE_PREFIX_PATH is set."
fi

cmake "${cmake_args[@]}" ..
make -j
