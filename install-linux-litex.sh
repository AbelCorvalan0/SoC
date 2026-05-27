#!/bin/bash

sudo apt install build-essential device-tree-compiler wget git python3-setuptools
git clone https://github.com/litex-hub/linux-on-litex-vexriscv
cd linux-on-litex-vexriscv
wget https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py
chmod +x litex_setup.py
echo " ########## Creating Virtual Enviroment ##########





"
python3 -m venv ~/litex-venv
echo "########## Virtual Enviroment created ##########



########## Activate to litex-venv (Virt Env) ##########
"
source ~/litex-venv/bin/activate
echo "########## litex-venv activated succesfully ##########



########## Running litex_setup.py ##########
"
#./litex_setup.py --init --install --user
./litex_setup.py --init --install
#sudo pip install migen
# Install migen
# update packaging tools
pip install --upgrade pip setuptools wheel
# Try Migen again
cd ~/SoC/migen
echo "########## Install MIGEN ##########



"
pip install .
# Verify Migen
python -c "import migen; print(migen.__file__)"
# Going to SoC
cd ../linux-on-litex-vexriscv/
pip3 install meson
sudo apt install gcc-riscv64-unknown-elf
./litex_setup --gcc=riscv
