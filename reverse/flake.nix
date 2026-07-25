{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            python313Packages.frida-python
            python313Packages.pwntools
            python313Packages.angrop
            python313Packages.distorm3

            elf-info
            checksec
            binwalk
            pev
            hopper
            binaryninja-free
            ghidra-bin
            ida-free
            cutter
            cutterPlugins.rz-ghidra
            imhex
            jadx
            apk-tools
            frida-tools
            pe-bear
            pwntools
            radare2
            rizin
            rizinPlugins.rz-ghidra
            dex2jar
            quark-engine
          ];
        };
      }
    );
}
