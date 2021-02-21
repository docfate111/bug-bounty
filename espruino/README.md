Fuzzing the [Espruino](https://github.com/espruino/Espruino) JavaScript engine with honggfuzz. Random binary formats cause dereferencing invalid memory errors.

Hopefully I can get Fuzzilli to work to find some JavaScript engine bugs - the fuzzer ran for 5 days and did not find any crashes.

All crashes fixed in latest commit.

https://github.com/espruino/Espruino/commit/6db5779343838f6e81b6f210490a5af896081936#diff-7e654b1bf05b10505a45255d36d427737e2064c6696b2d9686ce6839a66b3331

The issue was modulo a by -1 causing a floating point exception since it evaluated to zero which skipped past the if zero check on a. Then a%b was passed to the function which later caused a division by zero.

The segmentation fault was a use-after-free. After the pointer was freed it became an unusable address which was then dereferenced.
