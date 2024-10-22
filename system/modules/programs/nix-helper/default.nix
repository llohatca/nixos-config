{ lib
, config
, username
, ...
}:

with lib;

let
  cfg = config.modules.programs.nix-helper;
in {
  options = {
    modules.programs.nix-helper.enable = mkEnableOption "Enables nix-helper";
  };

  config = mkIf cfg.enable {
    programs.nh = {
      enable = true;
      flake = "/home/${username}/.config/nix";
    };
  };
}
