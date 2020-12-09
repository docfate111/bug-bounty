

Ubuntu Linux 64 bit 
apt install mksh 
wget https://pub.allbsd.org/MirOS/dist/mir/mksh/mksh-R56.tgz (if mksh updates)
```

gef➤  exploitable
Description: Possible stack corruption
Short description: PossibleStackCorruption (7/22)
Hash: 4ae224ddf242a06aaed9962641ba1079.4ae224ddf242a06aaed9962641ba1079
Exploitability Classification: EXPLOITABLE
Explanation: GDB generated an error while unwinding the stack and/or the stack contained return addresses that were not mapped in the inferior's process address space and/or the stack pointer is pointing to a location outside the default stack region. These conditions likely indicate stack corruption, which is generally considered exploitable.
Other tags: DestAvNearNull (15/22), AccessViolation (21/22)

```

