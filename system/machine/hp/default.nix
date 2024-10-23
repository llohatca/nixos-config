{ ...
}:
{
  module = {
    boot.enable = false;
    sound.enable = true;
    timezone.enable = true;
    users.enable = true;



    services = {
      network.enable = true;
      polkit.enable = true;
      zapret-config.enable = true;
      flatpak.enable = true;
      # gvfs.enable = true;

      zram = {
        enable = true;
        deviceNumber = 2;
      };

      # openssh = {
      #  enable = true;
      #  settings = {
      #    PasswordAuthentication = false;
      #    KbdInteractiveAuthentication = false;
      #  };
      # };

    };

    programs = {
      dconf.enable = true;
      steam.enable =  true;
      home-manager.enable = true;
      hyprland.enable = true;
      nix-helper.enable = true;
      systemPackages.enable = true;
    };
  };
}
