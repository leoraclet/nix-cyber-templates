# Nix flake templates for easy hacking environments

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

To initialize (where `${ENV}` is one of the template names listed in the table below):

```shell
nix flake init -t github:leoraclet/nix-cyber-templates#${ENV}
```

## How to use the templates

Once your preferred template has been initialized, you can use the provided shell in two ways:

1. If you have [`nix-direnv`](https://github.com/nix-community/nix-direnv) installed, you can initialize the environment by running `direnv allow`.
2. If you don't have `nix-direnv` installed, you can run `nix develop` to open up the Nix-defined shell.

## Available templates

| Category of Tools        | Template                      |
| :----------------------- | :---------------------------- |
| *Binary exploitation*    | [`pwn`](./pwn/)               |
| *Cryptanalysis*          | [`crypto`](./crypto/)         |
| *Forensic*               | [`forensic`](./forensic/)     |
| *Hardware*               | [`hardware`](./hardware/)     |
| *Network*                | [`network`](./network/)       |
| *Reverse engineering*    | [`reverse`](./reverse)        |
| *Steganalysis*           | [`stegano`](./stegano/)       |
| *Web*                    | [`web`](./web/)               |

## Template contents

The sections below list what each template includes. In all cases, you're free to add and remove packages as you see fit; the templates are just boilerplate.

> [!note]
> While many hacking tools exist, those environments includes only those I use regularly or have used multiple times.

### [`pwn`](./pwn/)

### [`crypto`](./crypto/)

- [hashcat](https://hashcat.net/hashcat/) - Advanced CPU/GPU password recovery tool
- [hashcat-utils](https://github.com/hashcat/hashcat-utils) - Utilities for hashcat
- [hash_extender](https://github.com/iagox86/hash_extender) - Hash length extension attack tool
- [fcrackzip](https://github.com/hyc/fcrackzip) - Password cracker for ZIP archives
- [john](https://www.openwall.com/john/) - Password cracker (JtR)
- [johnny](https://github.com/openwall/johnny) - GUI for John the Ripper
- [sage](https://www.sagemath.org/) - Mathematics software system
- [veracrypt](https://www.veracrypt.fr/) - Disk encryption software
- [truecrack](https://github.com/lvaccaro/truecrack) - Brute-force password cracker for TrueCrypt
- [pdfrip](https://github.com/mufeedvh/pdfrip) - PDF password cracker
- [xortool](https://github.com/hellman/xortool) - XOR analysis tool
- [magma](https://github.com/magma/magma) - Computer algebra system
- [msolve](https://github.com/algebraic-solving/msolve) - Multivariate polynomial solver
- [flatter](https://github.com/keeganryan/flatter) - Lattice reduction tool
- [fplll](https://github.com/fplll/fplll) - Lattice reduction library
- [pari](https://pari.math.u-bordeaux.fr/) - Computer algebra system
- [bkcrack](https://github.com/kimci86/bkcrack) - ZIP/WINRAR/7Z password cracker
- [numpy](https://numpy.org/) - Numerical computing library
- [galois](https://galois.readthedocs.io/) - Galois field arithmetic library
- [gmpy2](https://gmpy2.readthedocs.io/) - Python interface to GMP/MPFR
- [pwntools](https://github.com/Gallopsled/pwntools) - CTF framework and binary exploitation library
- [sympy](https://www.sympy.org/) - Symbolic mathematics library
- [pycryptodome](https://www.pycryptodome.org/) - Cryptographic library
- [z3-solver](https://github.com/Z3Prover/z3) - Theorem prover and SMT solver
- [cryptography](https://cryptography.io/) - Cryptographic recipes and primitives
- [py-ecc](https://github.com/ethereum/py_ecc) - Elliptic curve cryptography library
- [cypari](https://github.com/3-manifolds/CyPari) - Python interface to PARI
- [mpmath](https://mpmath.org/) - Arbitrary-precision arithmetic library
- [fpylll](https://github.com/fplll/fpylll) - Python interface to FPLLL

### [`forensic`](./forensic/)

### [`hardware`](./hardware/)

### [`network`](./network/)

### [`reverse`](./reverse)

### [`stegano`](./stegano/)

### [`web`](./web/)
