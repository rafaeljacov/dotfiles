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
  nodejs_24
  posting
  python3
  shellcheck
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
