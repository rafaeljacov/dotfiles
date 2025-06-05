pkgs:
with pkgs; [
  black
  clang-tools
  deno
  delta
  devenv
  fd
  gcc
  git
  gnumake
  hyprls
  imagemagick
  jq
  lua-language-server
  mypy
  neovim
  neovide
  nixd
  nodePackages.prettier
  nodejs_24
  posting
  python3
  shellcheck
  sqlfluff
  typst
  typstyle
  zed-editor
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
