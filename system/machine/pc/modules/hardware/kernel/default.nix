{ pkgs
, ...
}:

{
  boot = {
    kernelParams = [
      "quiet"
      "splash"
      "zswap.enabled=0"
    ];

    loader.grub.enable = true;
    loader.grub.device = "/dev/sda";
    kernelPackages = pkgs.linuxPackages_zen;

    kernelModules = [ ];
    extraModulePackages = [ ];
  

    initrd = {
      kernelModules = [ ];
      availableKernelModules = [ "ahci" "ohci_pci" "ehci_pci" "pata_atiixp" "usb_storage" "usbhid" "sd_mod" ];
    };

  };

}

