{ lib
  , config
  , ...
}:
with lib;

let
  cfg = config.modules.timezone;
in {
  options.modules.timezone = {
    enable = mkEnableOption "Set timezone to Yekaterinburg";
  };
  config = mkIf cfg.enable {
    time.timeZone = "Asia/Yekaterinburg";
  };
}
