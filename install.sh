# git submodule init
# git submodule update
mkdir build
cd build
cmake ..
make
export PYTHONPATH=$PWD:$PYTHONPATH
cp *.so ../lib/
