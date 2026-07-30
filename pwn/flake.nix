{
  description = "Binary exploitation environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            python313Packages.pwntools
            python313Packages.ropper
            python313Packages.angrop
            python313Packages.z3-solver
            python313Packages.frida-python
            python313Packages.unicorn-angr
            python313Packages.unicorn
            python313Packages.capstone
            python313Packages.qiling
            python313Packages.angr
            python313Packages.miasm

            ltrace
            strace
            lldb
            nasm
            ropgadget
            frida-tools
            capstone
            unicorn
            gdb
            imhex
            ida-free
            ghidra-bin
            binaryninja-free
            gef
            qemu
            qemu-utils
            qemu-user
          ];
        };
      }
    );
}
