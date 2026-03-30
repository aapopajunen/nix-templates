{
  description = "Node.js project";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
    in {
      devShells = nixpkgs.lib.genAttrs systems (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in {
          default = pkgs.mkShell {
            packages = with pkgs; [
              nodejs_22
            ];

            shellHook = ''
              echo "Node.js dev shell"
              echo "Suggested workflow:"
              echo "  npm create next-app@latest ."
              echo "  npm run dev"
            '';
          };
        });
    };
}
