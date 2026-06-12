#!/bin/bash

# Activate virtual enviroment (litex-venv)
source ./set-venv.sh
# Go to the directory
cd litex-boards/litex_boards/targets/
# Build board
./terasic_de0nano.py
# Return to the main directory
cd ../../../
