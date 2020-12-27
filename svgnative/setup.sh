#!/bin/bash
git clone https://github.com/adobe/svg-native-viewer.git
cd svg-native-viewer
git submodule update --init
sudo apt-get install build-essential libboost-system-dev
cd svg-native
cmake -Bbuild/linux -H. -DCMAKE_CXX_COMPILER=hfuzz-clang++
cp include/svgnative/ports/string/StringSVGRenderer.h ports/string/StringSVGRenderer.h
cd build/linux
sudo make install
cd ../..
honggfuzz -n 2 -i seeds --crashdir output build/linux/example/testC/testC ___FILE___ output
honggfuzz -n 2 -i test/svg --crashdir output -- build/linux/example/testText/testSVGNative ___FILE___ output
