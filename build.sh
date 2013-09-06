rm -rf build
mkdir build
cd build
cmake ../
make
ctest -V
make install
ldconfig
python /home/fokko/Desktop/gr-ais/apps/ais_rx.py -d
