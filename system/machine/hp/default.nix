{ ...
}:
{
  module = {
    tty.enable = true;
    boot.enable = false;
    sound.enable = true;
    timezone.enable = true;
    locale.enable = true;
    minimal.enable = true;
    users.enable = true;



    services = {
      greetd = {
        enable = true;
        frontend = "tui";
      };
      systemd-oomd.enable = true;
      network.enable = true;
      polkit.enable = true;
      zapret.enable = true;
      flatpak.enable = true;
      gvfs.enable = true;
      zerotier-one.enable = true;


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
      fonts.enable = true;
      gamemode.enable = true;
      steam.enable = true;
      home-manager.enable = true;
      hyprland.enable = true;
      nix-helper.enable = true;
      systemPackages.enable = true;
    };
  };
}
