# fuzzing Adobe SVG native

https://github.com/adobe/svg-native-viewer/commit/8a936f51859fdf45f875c9cf4097fe547a50448b

I used honggfuzz to fuzz the library.

# testC

The files in crashes/testC were passed as arguments to build/linux/test/testC/testC binary.
The bug was that .get() was called on a  std::unique_ptr<SVGNative::SVGDocument> and it returned 0x0. Then the address was dereferenced causing a segmentation fault.

# testText

