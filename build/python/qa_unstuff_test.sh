#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/fokko/Desktop/gr-ais-fokko/python
export PATH=/home/fokko/Desktop/gr-ais-fokko/build/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH
export PYTHONPATH=/home/fokko/Desktop/gr-ais-fokko/build/swig:$PYTHONPATH
/usr/bin/python2 /home/fokko/Desktop/gr-ais-fokko/python/qa_unstuff.py 
