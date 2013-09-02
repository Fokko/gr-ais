rm -rf build
mkdir build
cd build
cmake ../
make
make install
ldconfig
python /usr/local/bin/ais_rx.py -g
