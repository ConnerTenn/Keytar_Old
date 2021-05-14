#!/bin/bash

GCC_PATH="/Expansion/opt/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/"

cmd=$1
shift
$GCC_PATH"arm-none-eabi-"$cmd $*
