# amalgamate the jsoncpp binaries
(cd vendor/osm_input/vendor/jsoncpp && python amalgamate.py)

mkdir bin

# change into the bin directory and compile the binaries
cd bin
ln -s ../scripts/pipeline.sh pipeline.sh
chmod +x pipeline.sh
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j4

