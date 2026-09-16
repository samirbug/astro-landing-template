{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

  outputs = inputs: let
    system = "x86_64-linux";
    pkgs = import inputs.nixpkgs { inherit system; };
  in {
    devShells.${system}.default =  pkgs.mkShell {
      packages = with pkgs; [
        pnpm
        python3
        nodejs_24
      ];
      shellHook = ''
        export SSL_CERT_FILE="${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt"
        export NIX_SSL_CERT_FILE="${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt"
      '';
    };
  };
}
