{
  home = {
    username = "lulu";
    homeDirectory = "/home/lulu";
    stateVersion = "24.05";
  };

  imports = [
    ./modules
    ./configs
    ./packages.nix
  ];
}
