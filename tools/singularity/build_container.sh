#!/usr/bin/env bash
set -euo pipefail

mode="${1:-cpu}"

case "${mode}" in
    cpu)
        singularity build kit_rt.sif kit_rt.def
        ;;
    cuda)
        singularity build kit_rt_MPI_cuda.sif kit_rt_MPI_cuda.def
        ;;
    rocm)
        singularity build kit_rt_MPI_rocm72.sif kit_rt_MPI_rocm72.def
        ;;
    all)
        singularity build kit_rt.sif kit_rt.def
        singularity build kit_rt_MPI_cuda.sif kit_rt_MPI_cuda.def
        singularity build kit_rt_MPI_rocm72.sif kit_rt_MPI_rocm72.def
        ;;
    *)
        echo "Usage: $0 [cpu|cuda|rocm|all]" >&2
        exit 1
        ;;
esac
