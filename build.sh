rm -rf build
mkdir build
cd build
cmake ../
make
ctest -V
sudo make install
sudo ldconfig
ais_rx.py -d
