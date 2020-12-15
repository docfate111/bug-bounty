# Methodology

Honggfuzz and corpus of examples .mov files.

[Tutorial I used](https://www.pentestpartners.com/security-blog/double-free-rce-in-vlc-a-honggfuzz-how-to/)


All vulnerabilities so far were with the boxdumper which uses the l-smash library. 
I will later debug and confirm that the library functions are where these heap bugs are occuring.

In crashes/logs there is some information about the binaries.


# Security implications(in theory)

If this library is used and client facing it might be possible to upload an image with code that could change 
the programs execution. Or if someone has a binary on a system a user could use it for privilege escalation.
