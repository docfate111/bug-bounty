Compiled mksh without AFL and the crash from the fuzzer still causes segmentation fault on
Ubuntu 20.04 LTS x64


```
static inline o_getsc_r(int carg){
    118	 	int cev = carg;
    119	 	struct sretrace_info *rp = retrace_info;
    120	 	while (rp) {
    121	 		Xcheck(rp->xs, rp->xp);
           // cev=0x0, rp=0x00007fffffffdf30  →  [...]  →  0x0004000200040007
           // xp -> 0x0
 →  122	 		*rp->xp++ = cev;
    123	 		rp = rp->next;
    124	 	}
    125	 	return cev;
    126	 }

```

Since rp->xp is 0x0, deferencing it causes a segmentation fault.
