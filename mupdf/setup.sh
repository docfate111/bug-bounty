#!/bin/bash
git clone https://github.com/ArtifexSoftware/mupdf.git
cd mupdf
git submodule update --init
sudo CC="hfuzz-clang" CXX="hfuzz-clang++"  make HAVE_X11=no HAVE_GLUT=no prefix=/usr/local install
cp ../harness.c harness.c
hfuzz-clang -I/usr/local/include -o harness harness.c /usr/local/lib/libmupdf.a /usr/local/lib/libmupdf-third.a -lm
honggfuzz -i ~/seeds --crashdir output -- ./harness ___FILE___ 0
