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
            zap
            caido
            burpsuite
            httpx
            ffuf
            webanalyze
            assetfinder
            subfinder
            sqlmap
            whatweb
            gobuster
            wpscan
            jwt-hack
          ];
        };
      }
    );
}
