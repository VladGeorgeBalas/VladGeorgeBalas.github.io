{
  description = "Dev shell for MyST Markdown (myst-md) tooling";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            nodejs_20
            corepack
            python3
          ];

          # Keep npm installs local to the repo (optional, but handy if you
          # decide to `npm i -g mystmd` inside the dev shell).
          shellHook = ''
            export npm_config_prefix="$PWD/.npm-global"
            export PATH="$npm_config_prefix/bin:$PATH"

            # Auto-activate a local Python venv if present.
            # Supports `.venv/` (common) and `venv/` (fallback).
            if [ -f "$PWD/.venv/bin/activate" ]; then
              source "$PWD/.venv/bin/activate"
            elif [ -f "$PWD/venv/bin/activate" ]; then
              source "$PWD/venv/bin/activate"
            fi
          '';
        };
      });
}
