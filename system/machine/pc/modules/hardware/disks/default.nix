{
  fileSystems."/" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@" ];
    };


  fileSystems."/home" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@home" ];
    };

  fileSystems."/var/log" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@log" ];
    };

  fileSystems."/nix" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@nix" ];
    };

  fileSystems."/.snapshots" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@.snapshots" ];
    };
}
