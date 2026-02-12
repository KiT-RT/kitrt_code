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
    all)
        singularity build kit_rt.sif kit_rt.def
        singularity build kit_rt_MPI_cuda.sif kit_rt_MPI_cuda.def
        ;;
    *)
        echo "Usage: $0 [cpu|cuda|all]" >&2
        exit 1
        ;;
esac
