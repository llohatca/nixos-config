{
  fileSystems."/" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@" "rw" "relatime" "max_inline=256" "commit=300" "autodefrag" ];
    };


  fileSystems."/home" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@home" "rw" "relatime" "max_inline=256" "commit=300" "autodefrag" ];
    };

  fileSystems."/var/log" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@log" "noatime" "rw" "relatime" "max_inline=256" "commit=300" "autodefrag" ];
    };

  fileSystems."/nix" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@nix" "noatime" "rw" "relatime" "max_inline=256" "commit=300" "autodefrag" ];
    };

  fileSystems."/.snapshots" =
    {
      device = "/dev/sda1";
      fsType = "btrfs";
      options = [ "subvol=@.snapshots" "rw" "relatime" "max_inline=256" "commit=300" "autodefrag" ];
    };
  swapDevices = [
    {
      device = "/swap/swapfile";
      priority = 1;
    }
  ];
}
