{
  fileSystems."/" =
    {
      device = "/dev/sda2";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    {
      device = "/dev/sda1";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };
}
