#!/bin/bash

sudo apt install build-essential device-tree-compiler wget git python3-setuptools
git clone https://github.com/litex-hub/linux-on-litex-vexriscv
cd linux-on-litex-vexriscv
wget https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py
chmod +x litex_setup.py
python3 -m venv ~/litex-venv
source ~/litex-venv/bin/activate
#./litex_setup.py --init --install --user
./litex_setup.py --init --install
# Puede que migen no lo tome
# Instalarlo fuera de este script
#sudo pip install migen
pip install migen
