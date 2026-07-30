{
  description = "Hardware hacking environment";

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
            python313Packages.sigrok

            pulseview
            sigrok-cli
            libsigrok
            libsigrokdecode
            binwalk
            sigdigger
            urh
            qemu
            gnuradio
            inspectrum
            urh
            qemu-utils
            qemu-user
            gdb
            imhex
            saleae-logic-2
          ];
        };
      }
    );
}
