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
* **Python-wrapped** via [CharmKIT](https://github.com/KiT-RT/CharmKIT)
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



## Installation

### Plain cpp setup
```bash
# Clone repository
git clone https://github.com/KiT-RT/kitrt_code.git
cd kitrt_code
git submodule update --init --recursive

# Build with CMake
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ../
make -j

```
### Docker setup 
A preconfigured docker container can also be used to run the code.
By running

```bash
docker run --rm -ti -v $(pwd):/home kitrt/test:latest
```

Bash scripts are provided in the folder tools/CI to get started with the docker environments. To start an interactive docker environment, execute
```bash
docker run -i -t --rm -v $(pwd)/../..:/mnt kitrt/test:latest /bin/bash
```

### Singularity setup 
Create the singularity container
```bash
mkdir build_singularity
cd tools/singularity
sudo sh build_container.sh
chmod +x install_kitrt_singularity.sh
singularity exec kit_rt.sif ./install_kitrt_singularity.sh
```
Run the singularity container
```bash
singularity shell --bind $(pwd)/../..:/mnt kit_rt.sif
```

## Running simulations
Within any of the above setups, navigate to the example folder and execute KiT-RT
```bash
cd examples
../<build_folder_name>/KiT-RT configs/lattice_SN.cfg
```

## Tensorflow backend
If you choose to enable the integrated machine learning tools via the BUILD_ML option, you need to install the tensorflow C-API:
```bash
FILENAME=libtensorflow-cpu-linux-x86_64-2.7.0.tar.gz
wget -q --no-check-certificate https://storage.googleapis.com/tensorflow/libtensorflow/${FILENAME}
tar -C /usr/local -xzf ${FILENAME}
ldconfig /usr/local/lib
```
and for a gpu based version (you need supported hardware and gpu drivers, see here ):
```bash
FILENAME=libtensorflow-gpu-linux-x86_64-2.7.0.tar.gz
wget -q --no-check-certificate https://storage.googleapis.com/tensorflow/libtensorflow/${FILENAME}
tar -C /usr/local -xzf ${FILENAME}
ldconfig /usr/local/lib
```
Or use the docker container
```bash
docker run --rm -ti -v $(pwd):/home kitrt/test_ml:latest
```


## Python API

The Python interface is provided via [CharmKIT](https://github.com/KiT-RT/CharmKIT), allowing seamless integration into AI and outer-loop (UQ, Optimization) workflows. 
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
