# KiT-RT: Modular, HPC-Ready Radiative Transport Solver

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE) [![GitHub Stars](https://img.shields.io/github/stars/KiT-RT/kitrt_code)](https://github.com/KiT-RT/kitrt_code/stargazers)
[![Build Status](https://github.com/CSMMLab/KiT-RT/actions/workflows/c-cpp.yml/badge.svg)](https://github.com/CSMMLab/KiT-RT/actions/workflows/c-cpp.yml)
[![Coverage Status](https://coveralls.io/repos/github/CSMMLab/KiT-RT/badge.svg?branch=master)](https://coveralls.io/github/CSMMLab/KiT-RT?branch=master)
[![Docs](https://readthedocs.org/projects/kit-rt/badge/?version=latest)](https://kit-rt.readthedocs.io/en/latest/?badge=latest)


## Overview

KiT-RT is an open-source, multi-fidelity **C++ PDE solver for radiative transport** in fusion, fission, and radiation therapy simulations. Designed from the ground up for **AI-accelerated scientific computing**, it supports hybrid neural–PDE workflows, enabling high-resolution reference solutions, scalable data generation for scientific foundation models, and outer-loop workflows such as uncertainty quantification and design optimization.



## Key Features

* **Modular, HPC-ready** architecture. Supports hybrid **MPI/OpenMP distributed parallelism**.
* **Containerized** for portable deployment across HPC systems (Docker & Singularity).
* **Python-wrapped** via [charm_kit](https://github.com/KiT-RT/charm_kit)
* Downstream applications:
  - Data generation for scientific **foundation models**.
  - high-resolution **reference solutions** for AI-based surrogate modeling.
  - Plug-and-play integration for outer-loop workflows (**UQ, optimization**).



## Scientific Impact

KiT-RT has been adopted by:

* Sandia National Labs
* Lawrence Livermore National Labs
* Oak Ridge National Labs
* Karlsruhe Institute of Technology
* TU Delft
* NMBU Norway
* Chung-Ang University, Korea
* RIKEN Japan


Applications include:

* Foundation model training for fusion simulation.
* Large-scale UQ experiments.
* Radiation therapy planning.
* Accelerated neural network inference.
* Reference dataset generation for ML-based surrogate models.



## Publications & References

### Core Software

* **KiT-RT: An Extendable Framework for Radiative Transfer and Therapy** — *ACM Transactions on Mathematical Software* \[[DOI](https://doi.org/10.1145/3630001)]

### Datasets & Benchmarks

* **Reference solutions for linear radiation transport: the Hohlraum and Lattice benchmarks** — *arXiv:2505.17284* \[[PDF](https://arxiv.org/abs/2505.17284)]

### Neural–PDE Integration

* **Structure-Preserving Operator Learning** — *arXiv:2402.16613* \[[PDF](https://arxiv.org/abs/2402.16613)]
* **Structure-preserving neural networks for entropy-based closure** — *Journal of Computational Physics* \[[DOI](https://doi.org/10.1016/j.jcp.2025.113967)], *ICML*  \[[Link]([https://doi.org/10.1016/j.jcp.2025.113967](https://proceedings.mlr.press/v162/schotthofer22a.html))], *AIAA*  \[[DOI](https://doi.org/10.2514/6.2021-2895)]
* [PhD Thesis: Synergies between Numerical Methods for Kinetic Equations and Neural Networks](https://doi.org/10.5445/IR/1000158838)



## Installation and Run (By Parallelization)

One-time setup:
```bash
git clone https://github.com/KiT-RT/kitrt_code.git
cd kitrt_code
git submodule update --init --recursive
```

Then run all commands from the repository root.

### 1. CPU (OpenMP only)

#### 1a) Plain installation (no container)
```bash
mkdir -p build_omp
cd build_omp
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF ..
make -j
cd ..
./build_omp/KiT-RT tests/input/validation_tests/SN_solver/checkerboard_SN.cfg
```

#### 1b) Docker installation
```bash
docker run --rm -it -v $(pwd):/mnt -w /mnt kitrt/test:latest /bin/bash
mkdir -p build_docker_omp
cd build_docker_omp
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF ..
make -j
cd ..
./build_docker_omp/KiT-RT tests/input/validation_tests/SN_solver/checkerboard_SN.cfg
```

#### 1c) Singularity installation
```bash
cd tools/singularity
sudo singularity build kit_rt.sif kit_rt.def
cd ../..
mkdir -p build_singularity_omp
cd build_singularity_omp
singularity exec ../tools/singularity/kit_rt.sif \
  cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF ..
singularity exec ../tools/singularity/kit_rt.sif make -j
cd ..
singularity exec tools/singularity/kit_rt.sif \
  ./build_singularity_omp/KiT-RT tests/input/validation_tests/SN_solver/checkerboard_SN.cfg
```

### 2. CPU (OpenMP + MPI)

#### 2a) Plain installation (no container)
```bash
mkdir -p build_mpi
cd build_mpi
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF ..
make -j
cd ..
mpirun -np 4 ./build_mpi/KiT-RT tests/input/validation_tests/SN_solver_hpc/lattice_hpc_200_cpu_order2.cfg
```

#### 2b) Singularity installation
```bash
cd tools/singularity
sudo singularity build kit_rt_MPI.sif kit_rt_MPI.def
cd ../..
mkdir -p build_singularity_mpi
cd build_singularity_mpi
singularity exec ../tools/singularity/kit_rt_MPI.sif \
  cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF ..
singularity exec ../tools/singularity/kit_rt_MPI.sif make -j
cd ..
singularity exec tools/singularity/kit_rt_MPI.sif \
  mpirun -np 4 ./build_singularity_mpi/KiT-RT tests/input/validation_tests/SN_solver_hpc/lattice_hpc_200_cpu_order2.cfg
```

### 3. CPU + CUDA (single or multi-GPU via MPI)

#### 3a) Singularity installation
```bash
cd tools/singularity
sudo singularity build kit_rt_MPI_cuda.sif kit_rt_MPI_cuda.def
cd ../..
mkdir -p build_singularity_cuda
cd build_singularity_cuda
singularity exec --nv ../tools/singularity/kit_rt_MPI_cuda.sif \
  cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=ON -DBUILD_CUDA_HPC=ON -DBUILD_ML=OFF ..
singularity exec --nv ../tools/singularity/kit_rt_MPI_cuda.sif make -j
cd ..
singularity exec --nv tools/singularity/kit_rt_MPI_cuda.sif \
  mpirun -np 2 ./build_singularity_cuda/KiT-RT tests/input/validation_tests/SN_solver_hpc/lattice_hpc_200_cuda_order2.cfg
```

When compiled with `-DBUILD_CUDA_HPC=ON`, HPC runs use the CUDA backend if a GPU is visible, and fall back to CPU if no GPU is detected.

### 4. Build with TensorFlow backend (CPU + OpenMP only)

```bash
FILENAME=libtensorflow-cpu-linux-x86_64-2.7.0.tar.gz
wget -q --no-check-certificate https://storage.googleapis.com/tensorflow/libtensorflow/${FILENAME}
sudo tar -C /usr/local -xzf ${FILENAME}
sudo ldconfig /usr/local/lib
rm ${FILENAME}
mkdir -p build_ml
cd build_ml
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=ON ..
make -j
cd ..
./build_ml/KiT-RT tests/input/validation_tests/MN_solver/checkerboard_MN_neural.cfg
```

### 5. Debug build

```bash
mkdir -p build_debug
cd build_debug
cmake -DCMAKE_BUILD_TYPE=Debug -DBUILD_MPI=OFF -DBUILD_CUDA_HPC=OFF -DBUILD_ML=OFF ..
make -j
cd ..
./build_debug/KiT-RT tests/input/validation_tests/SN_solver/checkerboard_SN.cfg
```

### 6. Test + coverage build

```bash
mkdir -p build_coverage
cd build_coverage
cmake -DCMAKE_BUILD_TYPE=Debug -DBUILD_TESTING=ON -DBUILD_CODE_COV=ON -DBUILD_UNITY=OFF ..
make -j
./unit_tests
ctest --output-on-failure
gcovr -r .. --html-details coverage.html
```


## Python API

The Python interface is provided via [charm_kit](https://github.com/KiT-RT/charm_kit), allowing seamless integration into AI and outer-loop (UQ, Optimization) workflows. 
Check the corresponding readme for further info




## Scaling Studies

Performance benchmarks and scaling plots can be found \[[here](https://doi.org/10.1145/3630001)].



## License

KiT-RT is released under the MIT License. See [LICENSE](LICENSE) for details.

Cite this software using 

```bash
@article{kitrt2023,
    title={KiT-RT: An extendable framework for radiative transfer and therapy},
    author={Kusch, Jonas and Schotth{\"o}fer, Steffen and Stammer, Pia and Wolters, Jannick and Xiao, Tianbai},
    journal={ACM Transactions on Mathematical Software},
    volume={49},
    number={4},
    pages={1--24},
    year={2023},
    publisher={ACM New York, NY}
}
```
