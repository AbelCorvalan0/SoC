#!/bin/bash

source ./set-venv.sh
cd linux-on-litex-vexriscv
./make.py --board=de0nano --build
#./terasic_de0nano.py --build
