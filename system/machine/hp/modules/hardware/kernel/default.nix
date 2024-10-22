{ pkgs
, ...
}:

{
  boot = {
    kernelParams = [
      "quiet"
      "splash"
    ];

    loader.grub.enable = true;
    loader.grub.device = "/dev/sda";
    kernelPackages = pkgs.linuxPackages_zen;

    kernelModules = [ ];
    extraModulePackages = [ ];
  

    initrd = {
      kernelModules = [ ];
      availableKernelModules = [ 
        "ehci_pci" 
        "ahci"
        "usbhid"
        "usb_storage"
        "sd_mod"
        "sr_mod"
        "rtsx_pci_sdmmc" 
      ];
    };

  };

}
