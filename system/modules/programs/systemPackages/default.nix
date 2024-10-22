{ pkgs
, lib
, config
, ...
}:

with lib;

let
  cfg = config.module.programs.systemPackages;
in {
  options = {
    module.programs.systemPackages.enable = mkEnableOption "Enable System Software";
  };

  config = mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      # Utils
      neovim
      tmux
      wget
      home-manager
      git
      busybox
      nvd
      curl
      wget
      jq
      lsd

      # Hardware utils
      glxinfo
      pciutils
      usbutils
      powertop
      lm_sensors
      strace
      ltrace
      lsof
      sysstat
      cpufetch
      sbctl

      # Utils
      dconf-editor
    ];
    fonts.packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      liberation_ttf
      (nerdfonts.override { fonts = [ "JetBrainsMono" "CascadiaCode" ]; })
    ];
  };
}
