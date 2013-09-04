rm -rf build
mkdir build
cd build
cmake ../
make
make test
make install
ldconfig
python /home/fokko/Desktop/gr-ais-new/gr-ais/apps/ais_rx.py
