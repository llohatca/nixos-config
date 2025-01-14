{ inputs, pkgs, ... }:
{
  nixpkgs = {
    config.allowUnfree = true;
    config.allowUnfreePerdicate = (_: true);
  };

  programs = {
    imv.enable = true;
    mpv.enable = true;
  };

  home.packages = with pkgs; [
    #for bssid search
    protobuf

    #for my life
    clang-tools
    clang
    cargo
    rustc
    picocom
    arduino-ide
    arduino-cli
    # android-studio
    # jdk



    #############
    # cli tools #
    #############
    # zerotieron

    ## system control ##
    btop
    powertop
    wl-clipboard
    wl-clipboard-x11
    hyprshade
    spoofdpi
    pulseaudio

    ## system tools ##
    unzip
    unrar
    p7zip

    ## shell ##
    fzf
    zoxide
    lsd
    bat
    ripgrep

    ## tui ##
    yazi
    ueberzugpp
    lazygit

    ## fetch ##
    fastfetch
    cpufetch


    ###########################
    # desktop envirement pkgs #
    ###########################
    alacritty
    wofi
    grimblast
    swww
    qbittorrent
    smassh

    flatpak
    gnome-software

    ################
    # settings app #
    ################
    pavucontrol
    dconf-editor

    ##############
    # usage pkgs #
    ##############
    firefox
    vesktop
    telegram-desktop
    # inputs.ayugram-desktop.packages.${pkgs.system}.default

    #for nekoray
    nekoray
    polkit_gnome

    transmission_4-gtk
    qpwgraph
    file-roller
    hyprpicker

    parsec-bin


    #############
    # dev tools #
    #############
    python312
    python312Packages.pip
    nodejs_22
  ];

}

