#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Mar 10 14:12:34 IST 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 40a8504ff13f45349937f17ec2c9d911 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot pipeline_proc_tb1_behav xil_defaultlib.pipeline_proc_tb1 xil_defaultlib.glbl -log elaborate.log"
xelab -wto 40a8504ff13f45349937f17ec2c9d911 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot pipeline_proc_tb1_behav xil_defaultlib.pipeline_proc_tb1 xil_defaultlib.glbl -log elaborate.log

