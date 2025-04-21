{pkgs}:
with pkgs; [
  black
  clang-tools
  deno
  devenv
  lua-language-server
  mypy
  neovim
  nixd
  nodePackages.prettier
  nodejs_23
  typst
  typstyle

  # Go
  gofumpt
  golangci-lint
  gotools

  # Rust
  rustup
  cargo-generate
]
