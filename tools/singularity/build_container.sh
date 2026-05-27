#!/usr/bin/env bash
set -euo pipefail

mode="${1:-cpu}"
runtime="${KITRT_CONTAINER_RUNTIME:-}"

if [ -z "${runtime}" ]; then
    if command -v apptainer >/dev/null 2>&1; then
        runtime="apptainer"
    elif command -v singularity >/dev/null 2>&1; then
        runtime="singularity"
    else
        echo "ERROR: install Apptainer or Singularity, or set KITRT_CONTAINER_RUNTIME." >&2
        exit 1
    fi
fi

case "${mode}" in
    cpu)
        "${runtime}" build kit_rt.sif kit_rt.def
        ;;
    cuda)
        "${runtime}" build kit_rt_MPI_cuda.sif kit_rt_MPI_cuda.def
        ;;
    rocm)
        "${runtime}" build kit_rt_MPI_rocm72.sif kit_rt_MPI_rocm72.def
        ;;
    all)
        "${runtime}" build kit_rt.sif kit_rt.def
        "${runtime}" build kit_rt_MPI_cuda.sif kit_rt_MPI_cuda.def
        "${runtime}" build kit_rt_MPI_rocm72.sif kit_rt_MPI_rocm72.def
        ;;
    *)
        echo "Usage: $0 [cpu|cuda|rocm|all]" >&2
        exit 1
        ;;
esac
