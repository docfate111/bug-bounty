

Ubuntu Linux 64 bit 
apt install mksh 
wget https://pub.allbsd.org/MirOS/dist/mir/mksh/mksh-R56.tgz (if mksh updates) 
Bug: Null pointer dereference

```
static inline o_getsc_r(int carg){
    118         int cev = carg;
    119         struct sretrace_info *rp = retrace_info;
    120         while (rp) {
    121                 Xcheck(rp->xs, rp->xp);
           // cev=0x0, rp=0x00007fffffffdf00  →  [...]  →  0x0003000200040006
 →  122                 *rp->xp++ = cev;
    123                 rp = rp->next;
    124         }
    125         return cev;
    126  }

```
```

gef➤  exploitable
Description: Possible stack corruption
Short description: PossibleStackCorruption (7/22)
Hash: 4ae224ddf242a06aaed9962641ba1079.4ae224ddf242a06aaed9962641ba1079
Exploitability Classification: EXPLOITABLE
Explanation: GDB generated an error while unwinding the stack and/or the stack contained return addresses that were not mapped in the inferior's process address space and/or the stack pointer is pointing to a location outside the default stack region. These conditions likely indicate stack corruption, which is generally considered exploitable.
Other tags: DestAvNearNull (15/22), AccessViolation (21/22)

```

