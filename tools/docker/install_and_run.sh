#!/bin/bash
cd ../mnt/
git submodule update --init --recursive
mkdir build_docker
cd build_docker
rm -rf *
cmake -G Ninja -DCMAKE_BUILD_UNITY=True -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=False -DBUILD_ML=True ../
ninja
cd ../examples
../build_docker/KiT-RT configs/checkerboard_MN_neural.cfg
#../build_docker/KiT-RT configs/checkerboard_MN.cfg
cp -r /home/result /mnt/result
