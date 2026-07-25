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
