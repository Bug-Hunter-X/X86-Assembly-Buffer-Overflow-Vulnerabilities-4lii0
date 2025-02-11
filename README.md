# x86 Assembly Buffer Overflow Vulnerabilities

This repository contains example code demonstrating potential buffer overflow vulnerabilities in x86 assembly language.  These vulnerabilities arise from calculations that don't properly account for potential out-of-bounds memory access.

The `bug.asm` file shows the vulnerable code. The `bugSolution.asm` file provides a safer alternative using bounds checking.