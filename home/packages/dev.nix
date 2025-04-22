pkgs:
with pkgs; [
  black
  clang-tools
  deno
  devenv
  gcc
  git
  gnumake
  hyprls
  lua-language-server
  mypy
  neovim
  nixd
  nodePackages.prettier
  nodejs_23
  postgresql
  python3
  sqlfluff
  typst
  typstyle
  zellij

  # Go
  go
  gofumpt
  golangci-lint
  gotools

  # Rust
  rustup
  cargo-generate
]
