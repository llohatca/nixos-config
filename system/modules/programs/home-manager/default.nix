{ inputs
, lib
, config
, ...
}:

with lib;

let
  cfg = config.modules.programs.hm;
in {
  options = {
    modules.programs.hm.enable = mkEnableOption "Enable Home Manager";
  };

  config = mkIf cfg.enable {
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true; 
      extraSpecialArgs = {
        inherit inputs;
      };
    };
  };
}
