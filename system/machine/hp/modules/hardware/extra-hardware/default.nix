{ lib
, config
, ...
}:

{
  hardware = {
    cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    acpilight.enable = true;
  };

  powerManagement.cpuFreqGovernor = "performance";
}
