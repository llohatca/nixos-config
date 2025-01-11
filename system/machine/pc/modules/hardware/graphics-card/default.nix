{ config
, pkgs
, ...
}:
{
  hardware.graphics = {
    enable = true;
  };
  services.xserver.videoDrivers = [ "nouveau" ];
}

