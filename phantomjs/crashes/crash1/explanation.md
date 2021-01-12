
The crash file sets encoding which triggers null pointer exception
```
"use strict";
function helloWorld() {
	console.log(phantom.outputEncoding + ": こんにちは、世界！");
}
```

in GDB, this is 0x0 which is dereferenced implicitly to get m_fileStream variable

```
  if (!m_fileStream) {
   232         // TODO: Should we switch to "text" mode?
   233         return false;
   234     }
```
