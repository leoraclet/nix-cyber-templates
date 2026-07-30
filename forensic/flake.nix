{
  description = "Forensic environment";

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
            exiftool
            safecopy
            pngcheck
            file
            networkminer
            firefox_decrypt
            bulk_extractor
            dive
            foremost
            scalpel
            volatility3
            volatility2-bin
            autopsy
            sleuthkit
            testdisk-qt
            wireshark
            tshark
          ];
        };
      }
    );
}
