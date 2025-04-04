{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    ags
    bat
    black
    bottles
    btop
    chafa
    ciscoPacketTracer8
    clang-tools
    deno
    devenv
    eza
    fish
    gofumpt
    golangci-lint
    gotools
    grim
    inputs.zen-browser.packages.${system}.beta
    krabby
    lua-language-server
    mypy
    neovim
    nixd
    nodePackages.prettier
    nodejs_23
    protonup
    ripgrep
    rustup
    slurp
    sqlfluff
    starship
    swappy
    swww
    teams-for-linux
    tldr
    typst
    typstyle
    udiskie
    watchman
    webcord
    yazi
    zoxide
  ];
}
