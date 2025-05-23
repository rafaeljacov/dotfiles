{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    ags
    bat
    bottles
    btop
    chafa
    ciscoPacketTracer8
    eza
    fish
    grim
    inputs.zen-browser.packages.${system}.beta
    krabby
    nix-your-shell
    protonup
    ripgrep
    slurp
    starship
    swappy
    swww
    teams-for-linux
    tldr
    udiskie
    webcord
    yazi
    zoxide
  ] ++ import ./dev.nix pkgs;
}
