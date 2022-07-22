#!/bin/bash


# Taken from here: https://github.com/equinor/dlisio/blob/master/python/pyproject.toml
cmake \
  -S ${SRC_DIR} \
  -B ${SRC_DIR}/build \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DLFP_FMT_HEADER_ONLY=ON                \
  -DBUILD_TESTING=OFF                     \

cd build
make -j4 install

