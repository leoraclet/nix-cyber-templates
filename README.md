# Nix flake templates for easy hacking environments

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

## How to initialize a project with a template

To initialize (where `${ENV}` is one of the template names listed in the table below):

```shell
nix flake init -t github:leoraclet/nix-cyber-templates#${ENV}
```

You can also directly create a new project with

```shell
nix flake new -t github:leoraclet/nix-cyber-templates#${ENV} ${NEW_PROJECT_DIRECTORY}
```

## How to use the templates

Once your preferred template has been initialized, you can use the provided shell in two ways:

1. If you have [`nix-direnv`](https://github.com/nix-community/nix-direnv) installed, you can initialize the environment by running `direnv allow`.
2. If you don't have `nix-direnv` installed, you can run `nix develop` to open up the Nix-defined shell.

## Available templates

| Category of Tools        | Template                      | Command                                                           |
| :----------------------- | :---------------------------- | :---------------------------------------------------------------- |
| *Binary exploitation*    | [`pwn`](./pwn/)               | `nix flake init -t github:leoraclet/nix-cyber-templates#pwn`      |
| *Cryptanalysis*          | [`crypto`](./crypto/)         | `nix flake init -t github:leoraclet/nix-cyber-templates#crypto`   |
| *Forensic*               | [`forensic`](./forensic/)     | `nix flake init -t github:leoraclet/nix-cyber-templates#forensic` |
| *Hardware*               | [`hardware`](./hardware/)     | `nix flake init -t github:leoraclet/nix-cyber-templates#hardware` |
| *Network*                | [`network`](./network/)       | `nix flake init -t github:leoraclet/nix-cyber-templates#network`  |
| *Pentest*                | [`pentest`](./pentest/)       | `nix flake init -t github:leoraclet/nix-cyber-templates#pentest`  |
| *OSINT*                  | [`osint`](./osint/)           | `nix flake init -t github:leoraclet/nix-cyber-templates#osint`    |
| *Reverse engineering*    | [`reverse`](./reverse)        | `nix flake init -t github:leoraclet/nix-cyber-templates#reverse`  |
| *Steganalysis*           | [`stegano`](./stegano/)       | `nix flake init -t github:leoraclet/nix-cyber-templates#stegano`  |
| *Web*                    | [`web`](./web/)               | `nix flake init -t github:leoraclet/nix-cyber-templates#web`      |

## Template contents

The sections below list what each template includes. In all cases, you're free to add and remove packages as you see fit; the templates are just boilerplate.

> [!note]
> While many hacking tools exist, those environments includes only those I use regularly or have used multiple times
> and the most popular ones.

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

- [`exiftool`](https://exiftool.org/) - EXIF metadata editor
- [`safecopy`](https://safecopy.sourceforge.net/) - Data recovery tool
- [`pngcheck`](https://www.libpng.org/pub/png/apps/pngcheck.html) - PNG file verification
- [`file`](https://www.darwinsys.com/file/) - File type identification
- [`networkminer`](https://www.netresec.com/?page=NetworkMiner) - Network forensics analysis tool
- [`firefox_decrypt`](https://github.com/unode/firefox_decrypt/) - Firefox password decryption
- [`bulk_extractor`](https://github.com/simsong/bulk_extractor) - Digital forensics tool
- [`dive`](https://github.com/wagoodman/dive) - Docker image explorer
- [`foremost`](https://github.com/korczis/foremost) - Forensic file carving
- [`scalpel`](https://github.com/sleuthkit/scalpel) - File carving tool
- [`volatility3`](https://github.com/volatilityfoundation/volatility3) - Memory forensics framework
- [`volatility2-bin`](https://github.com/volatilityfoundation/volatility) - Memory forensics (Volatility 2)
- [`autopsy`](https://www.autopsy.com/) - Digital forensics platform
- [`sleuthkit`](https://www.sleuthkit.org/) - Digital forensics toolkit
- [`testdisk-qt`](https://www.cgsecurity.org/wiki/TestDisk) - Partition recovery (Qt)
- [`wireshark`](https://www.wireshark.org/) - Network protocol analyzer
- [`tshark`](https://www.wireshark.org/docs/man-pages/tshark.html) - Wireshark CLI

### [`hardware`](./hardware/)

- [`sigrok`](https://sigrok.org/wiki/Python_bindings) - Python bindings for sigrok
- [`pulseview`](https://sigrok.org/wiki/PulseView) - Sigrok GUI
- [`sigrok-cli`](https://sigrok.org/wiki/Sigrok-cli) - Sigrok command-line interface
- [`libsigrok`](https://sigrok.org/wiki/Libsigrok) - Signal analysis library
- [`libsigrokdecode`](https://sigrok.org/wiki/Libsigrokdecode) - Protocol decoding library
- [`binwalk`](https://github.com/ReFirmLabs/binwalk) - Firmware analysis tool
- [`sigdigger`](https://github.com/batchdrake/sigdigger) - Signal analysis tool
- [`urh`](https://github.com/jopohl/urh) - Universal Radio Hacker
- [`qemu`](https://www.qemu.org/) - Machine emulator
- [`gnuradio`](https://www.gnuradio.org/) - Software-defined radio framework
- [`inspectrum`](https://github.com/miek/inspectrum) - Signal analyzer
- [`qemu-utils`](https://www.qemu.org/docs/master/system/invocation.html) - QEMU utilities
- [`qemu-user`](https://www.qemu.org/docs/master/user/main.html) - QEMU user-mode emulation
- [`gdb`](https://www.gnu.org/software/gdb/) - GNU Debugger
- [`imhex`](https://imhex.werwolv.net/) - Hex editor
- [`saleae-logic-2`](https://www.saleae.com/downloads) - Saleae Logic 2 software

### [`network`](./network/)

- [`impacket`](https://github.com/fortra/impacket) - Network protocol library
- [`scapy`](https://scapy.net/) - Interactive packet manipulation
- [`nmap`](https://nmap.org/) - Network scanner
- [`assetfinder`](https://github.com/tomnomnom/assetfinder) - Domain and subdomain finder
- [`subfinder`](https://github.com/projectdiscovery/subfinder) - Subdomain discovery tool
- [`wireshark`](https://www.wireshark.org/) - Network protocol analyzer
- [`tshark`](https://www.wireshark.org/docs/man-pages/tshark.html) - Wireshark CLI
- [`tor`](https://www.torproject.org/) - Anonymity network
- [`torsocks`](https://gitlab.torproject.org/tpo/core/torsocks/) - Tor SOCKS wrapper
- [`wifite2`](https://github.com/derv82/wifite2) - WiFi auditing tool
- [`aircrack-ng`](https://www.aircrack-ng.org/) - WiFi security auditing
- [`airgeddon`](https://github.com/v1s1t0r1sh3r3/airgeddon) - WiFi security auditing framework
- [`macchanger`](https://github.com/alobbs/macchanger) - MAC address changer
- [`amass`](https://github.com/OWASP/Amass) - Network mapping
- [`bettercap`](https://www.bettercap.org/) - Network attack tool
- [`ettercap`](https://www.ettercap-project.org/) - Network security tool
- [`dnsmasq`](https://thekelleys.org.uk/dnsmasq/doc.html) - DNS/DHCP server
- [`proxychains-ng`](https://github.com/rofl0r/proxychains-ng) - Proxy chains

### [`osint`](./osint/)

- [`shodan`](https://github.com/achillean/shodan-python) - Shodan API library
- [`social-engineer-toolkit`](https://github.com/trustedsec/social-engineer-toolkit) - Social engineering toolkit
- [`theharvester`](https://github.com/laramies/theHarvester) - Email and subdomain finder
- [`sherlock`](https://github.com/sherlock-project/sherlock) - Username finder
- [`socialscan`](https://github.com/iojw/socialscan) - Social media username checker
- [`maltego`](https://www.maltego.com/) - OSINT and forensics tool
- [`octosuite`](https://github.com/bellingcat/octosuite) - GitHub OSINT tool
- [`ghdorker`](https://github.com/obheda12/GitDorker) - GitHub dorking tool
- [`qgis`](https://qgis.org/) - Geographic Information System
- [`checkpwn`](https://github.com/brycx/checkpwn) - Have I Been Pwned checker
- [`metabigor`](https://github.com/j3ssie/metabigor) - OSINT tools and more but without API key

### [`pentest`](./pentest/)

> [!warning]
> TODO ...

### [`pwn`](./pwn/)

- [`pwntools`](https://github.com/Gallopsled/pwntools) - Binary exploitation library
- [`ropper`](https://github.com/sashs/Ropper) - ROP gadget finder
- [`angrop`](https://github.com/angr/angrop) - Angr + pwntools integration
- [`z3-solver`](https://github.com/Z3Prover/z3) - Theorem prover and SMT solver
- [`frida-python`](https://frida.re/) - Frida Python bindings
- [`unicorn`](https://www.unicorn-engine.org/) - CPU emulator framework
- [`capstone`](https://www.capstone-engine.org/) - Disassembly framework
- [`qiling`](https://github.com/qilingframework/qiling) - Advanced binary emulation framework
- [`angr`](https://github.com/angr/angr) - Binary analysis framework
- [`miasm`](https://github.com/cea-sec/miasm) - Reverse engineering framework
- [`ltrace`](https://www.ltrace.org/) - Library call tracer
- [`strace`](https://strace.io/) - System call tracer
- [`lldb`](https://lldb.llvm.org/) - LLVM debugger
- [`nasm`](https://www.nasm.us/) - Netwide assembler
- [`ropgadget`](https://github.com/JonathanSalwan/ROPgadget) - ROP gadget finder
- [`frida-tools`](https://frida.re/) - Frida tools
- [`gdb`](https://www.gnu.org/software/gdb/) - GNU Debugger
- [`imhex`](https://imhex.werwolv.net/) - Hex editor
- [`ida-free`](https://hex-rays.com/ida-free/) - IDA Free disassembler
- [`ghidra-bin`](https://ghidra-sre.org/) - Reverse engineering tool
- [`binaryninja-free`](https://binary.ninja/) - Binary analysis platform
- [`gef`](https://github.com/hugsy/gef) - GDB Enhanced Features
- [`qemu`](https://www.qemu.org/) - Machine emulator
- [`qemu-utils`](https://www.qemu.org/docs/master/system/invocation.html) - QEMU utilities
- [`qemu-user`](https://www.qemu.org/docs/master/user/main.html) - QEMU user-mode emulation

### [`reverse`](./reverse)

- [`frida-python`](https://frida.re/) - Frida Python bindings
- [`pwntools`](https://github.com/Gallopsled/pwntools) - Binary exploitation library
- [`angrop`](https://github.com/angr/angrop) - Angr + pwntools integration
- [`distorm3`](https://github.com/gdabah/distorm) - Disassembler library
- [`checksec`](https://github.com/slimm609/checksec) - Binary security checker
- [`binwalk`](https://github.com/ReFirmLabs/binwalk) - Firmware analysis tool
- [`hopper`](https://www.hopperapp.com/) - Disassembler and decompiler
- [`binaryninja-free`](https://binary.ninja/) - Binary analysis platform
- [`ghidra-bin`](https://ghidra-sre.org/) - Reverse engineering tool
- [`ida-free`](https://hex-rays.com/ida-free/) - IDA Free disassembler
- [`cutter`](https://cutter.re/) - Reverse engineering platform
- [`imhex`](https://imhex.werwolv.net/) - Hex editor
- [`jadx`](https://github.com/skylot/jadx) - Dex to Java decompiler
- [`apk-tools`](https://ibotpeaches.github.io/Apktool/) - APK manipulation tool
- [`frida-tools`](https://frida.re/) - Frida tools
- [`pe-bear`](https://github.com/hasherezade/pe-bear) - PE file analyzer
- [`radare2`](https://www.radare.org/) - Reverse engineering framework
- [`rizin`](https://rizin.re/) - Reverse engineering framework
- [`dex2jar`](https://github.com/pxb1988/dex2jar) - Dex to Jar converter
- [`quark-engine`](https://github.com/quark-engine/quark-engine) - Android malware analysis

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

## Resources

Based on :

- [the-nix-way/dev-templates](https://github.com/the-nix-way/dev-templates)
- [Athena-OS/athena-nix](https://github.com/Athena-OS/athena-nix)
- [NixOS/templates](https://github.com/NixOS/templates)
