Erro:
![725ca282-aeb9-4f49-b94e-6f4183a1b7b2](https://user-images.githubusercontent.com/69206952/175095393-56c2b13e-0d83-4761-bc38-81002d052a56.jpg)

Solução 1(funcionou na máquina virtual uma vez, mas não funcionou no CentOS7 instalado no computador mesmo).
```
yum install autoconf automake python3 libmpc-devel mpfr-devel gmp-devel gawk  bison flex texinfo patchutils gcc gcc-c++ zlib-devel expat-devel -y
yum install centos-release-scl -y
yum install devtoolset-7-make -y
yum install dtc -y
scl enable devtoolset-7 bash
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/usr/local/lib64:/usr/lib64
```
Solução 2:
https://itbilu.com/linux/management/NymXRUieg.html

```
find / -name "libstdc++.so*"
cp /edatools/pdks/skywater-pdk/env/conda/envs/skywater-pdk-scripts/lib/libstdc++.so.6.0.29 /usr/lib64
strings /edatools/pdks/skywater-pdk/env/conda/envs/skywater-pdk-scripts/lib/libstdc++.so.6 | grep GLIBCXX
rm -rf libstdc++.so.6
ln -s libstdc++.so.6.0.29 libstdc++.so.6
strings /usr/lib64/libstdc++.so.6 | grep GLIBCXX
```
