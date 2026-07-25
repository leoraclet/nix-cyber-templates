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
            python313Packages.impacket
            python313Packages.scapy

            nmap
            assetfinder
            subfinder
            wireshark
            tshark
            tor
            torsocks
            wifite2
            aircrack-ng
            airgeddon
            macchanger
            amass
            bettercap
            ettercap
            tshark
            dnsmasq
            proxychains-ng
          ];
        };
      }
    );
}
