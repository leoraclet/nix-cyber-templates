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

- [`hashcat`](https://hashcat.net/hashcat/) - Advanced CPU/GPU password recovery tool
- [`hashcat-utils`](https://github.com/hashcat/hashcat-utils) - Utilities for hashcat
- [`hash_extender`](https://github.com/iagox86/hash_extender) - Hash length extension attack tool
- [`fcrackzip`](https://github.com/hyc/fcrackzip) - Password cracker for ZIP archives
- [`john`](https://www.openwall.com/john/) - Password cracker (JtR)
- [`johnny`](https://github.com/openwall/johnny) - GUI for John the Ripper
- [`sage`](https://www.sagemath.org/) - Mathematics software system
- [`veracrypt`](https://www.veracrypt.fr/) - Disk encryption software
- [`truecrack`](https://github.com/lvaccaro/truecrack) - Brute-force password cracker for TrueCrypt
- [`pdfrip`](https://github.com/mufeedvh/pdfrip) - PDF password cracker
- [`xortool`](https://github.com/hellman/xortool) - XOR analysis tool
- [`magma`](https://github.com/magma/magma) - Computer algebra system
- [`msolve`](https://github.com/algebraic-solving/msolve) - Multivariate polynomial solver
- [`flatter`](https://github.com/keeganryan/flatter) - Lattice reduction tool
- [`fplll`](https://github.com/fplll/fplll) - Lattice reduction library
- [`pari`](https://pari.math.u-bordeaux.fr/) - Computer algebra system
- [`bkcrack`](https://github.com/kimci86/bkcrack) - ZIP/WINRAR/7Z password cracker
- [`numpy`](https://numpy.org/) - Numerical computing library
- [`galois`](https://galois.readthedocs.io/) - Galois field arithmetic library
- [`gmpy2`](https://gmpy2.readthedocs.io/) - Python interface to GMP/MPFR
- [`pwntools`](https://github.com/Gallopsled/pwntools) - CTF framework and binary exploitation library
- [`sympy`](https://www.sympy.org/) - Symbolic mathematics library
- [`pycryptodome`](https://www.pycryptodome.org/) - Cryptographic library
- [`z3-solver`](https://github.com/Z3Prover/z3) - Theorem prover and SMT solver
- [`cryptography`](https://cryptography.io/) - Cryptographic recipes and primitives
- [`py-ecc`](https://github.com/ethereum/py_ecc) - Elliptic curve cryptography library
- [`cypari`](https://github.com/3-manifolds/CyPari) - Python interface to PARI
- [`mpmath`](https://mpmath.org/) - Arbitrary-precision arithmetic library
- [`fpylll`](https://github.com/fplll/fpylll) - Python interface to FPLLL

### [`forensic`](./forensic/)

### [`hardware`](./hardware/)

### [`network`](./network/)

### [`reverse`](./reverse)

### [`stegano`](./stegano/)

- [`binwalk`](https://github.com/ReFirmLabs/binwalk) - Firmware analysis tool
- [`audacity`](https://www.audacityteam.org/) - Audio editor and recorder
- [`sonic-visualiser`](https://www.sonicvisualiser.org/) - Audio visualization and analysis
- [`mediainfo`](https://mediaarea.net/en/MediaInfo) - Media file analysis
- [`exiftool`](https://exiftool.org/) - EXIF metadata editor
- [`imhex`](https://imhex.werwolv.net/) - Hex editor
- [`steghide`](https://steghide.sourceforge.net/) - Steganography tool
- [`stegseek`](https://github.com/RickdeJager/stegseek) - Faster steghide alternative
- [`stegsolve`](https://www.wechall.net/forum/show/thread/527/Stegsolve_1.3/) - Steganography analysis tool
- [`zsteg`](https://github.com/zed-0xff/zsteg) - PNG/BMP steganography detection
- [`outguess`](https://github.com/resurrecting-open-source-projects/outguess) - Steganography tool
- [`pngcheck`](https://www.libpng.org/pub/png/apps/pngcheck.html) - PNG file verification
- [`recoverjpeg`](https://rfc1149.net/devel/recoverjpeg.html) - JPEG recovery from files
- [`snow`](https://www.darkside.com.au/snow/) - Whitespace steganography tool

### [`web`](./web/)

- [`zap`](https://www.zaproxy.org/) - OWASP Zed Attack Proxy
- [`caido`](https://caido.io/) - Web security testing suite
- [`burpsuite`](https://portswigger.net/burp) - Web vulnerability scanner
- [`httpx`](https://github.com/projectdiscovery/httpx) - Fast HTTP toolkit
- [`ffuf`](https://github.com/ffuf/ffuf) - Fast web fuzzer
- [`webanalyze`](https://github.com/rverton/webanalyze) - Web application fingerprinting
- [`assetfinder`](https://github.com/tomnomnom/assetfinder) - Domain and subdomain finder
- [`subfinder`](https://github.com/projectdiscovery/subfinder) - Subdomain discovery tool
- [`sqlmap`](https://sqlmap.org/) - Automatic SQL injection tool
- [`whatweb`](https://github.com/urbanadventurer/whatweb) - Website fingerprinting
- [`gobuster`](https://github.com/OJ/gobuster) - Directory and file brute-forcer
- [`wpscan`](https://wpscan.com/) - WordPress security scanner
- [`jwt-hack`](https://github.com/hahwul/jwt-hack) - JWT security testing tool
