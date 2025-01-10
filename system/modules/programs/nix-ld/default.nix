{ lib
, config
, ...
}:

with lib;

let
  cfg = config.modules.programs.nix-ld;
in
{
  options = {
    modules.programs.nix-ld.enable = mkEnableOption "Enable nix-ld";
  };

  config = mkIf cfg.enable {
    programs = {
      nix-ld = {
        enable = true;
        libraries = [ ];
      };
    };
  };
}
