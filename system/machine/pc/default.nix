{ ...
}:
{
  module = {
    tty.enable = true;
    boot.enable = false;
    sound.enable = true;
    timezone.enable = true;
    locale.enable = true;
    users.enable = true;



    services = {
      greetd = {
        enable = true;
        frontend = "tui";
      };
      systemd-oomd.enable = true;
      network.enable = true;
      polkit.enable = true;
      zapret-config.enable = true;
      flatpak.enable = true;
      gvfs.enable = true;
      zerotier-one.enable = true;
      openssh.enable = true;

      zram = {
        enable = true;
        deviceNumber = 2;
      };

    };

    programs = {
      dconf.enable = true;
      fonts.enable = true;
      steam.enable = true;
      home-manager.enable = true;
      hyprland.enable = true;
      nix-helper.enable = true;
      systemPackages.enable = true;
    };
  };
}

