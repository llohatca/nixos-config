{ username
, pkgs
, lib
, config
, ...
}:

with lib;

let
  cfg = config.module.programs.dwm;
in
{
  options = {
    module.programs.dwm.enable = mkEnableOption "Enables dwm";
  };

  config = mkIf cfg.enable {
    services.xserver.windowManager.dwm = {
      enable = true;
      # package = pkgs.dwm.overrideAttrs {
      #   src = /home/${username}/.config/dwm/;
      # };
    };

    services.libinput.enable = true;
  };
}
