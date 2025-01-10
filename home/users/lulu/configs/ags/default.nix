{ inputs, pkgs, ... }:
{
  # add the home manager module
  imports = [ inputs.ags.homeManagerModules.default ];

  programs.ags = {
    enable = true;

    # null or path, leave as null if you don't want hm to manage the config
    # configDir = ../ags;

    # additional packages to add to gjs's runtime

    extraPackages = with pkgs; [
      fzf
      wrapGAppsHook
      gobject-introspection
    ] ++ (with inputs.astal.packages.${pkg.system}; [
      io
      astal3
      apps
      battery
      hyprland
      mpris
      network
      notifd
      powerprofiles
      tray
      wireplumber
    ]);
  };
}
