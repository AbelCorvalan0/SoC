Descomprimir el archivo `gcc-riscv64-unknown-elf_23.tar.xz`

Luego lo llevamos a la carpeta `/opt/` del sistema
```sh
sudo mv gcc-riscv64-unknown-elf_23 /opt/
```
Verificamos el paso anterior

```sh
find /opt/gcc-riscv64-unknown-elf_23 -name "riscv64-unknown-elf-gcc"
```

En el final de `~/.bashrc` agregamos
```sh
export PATH=/opt/gcc-riscv64-unknown-elf_23/bin:$PATH
```
Recargamos:
```sh
source ~/.bashrc
```

Verificamos
```sh
riscv64-unknown-elf-gcc --version
```

<!-- sudo apt install gcc-riscv64-unknown-elf -->
