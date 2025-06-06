{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    alsa-utils
    brave
    brightnessctl
    cronie
    evince
    ffmpegthumbnailer
    file-roller
    gparted
    hyprsunset
    hyprsysteminfo
    kitty
    lsof
    lxqt.lxqt-policykit
    nixos-firewall-tool
    pavucontrol
    unzip
    usbutils
    vim
    vlc
    wezterm
    wget
    wl-clipboard
    xdg-user-dirs
    zip
  ];
}
