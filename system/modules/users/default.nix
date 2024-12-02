{ pkgs
, lib
, config
, username
, ...
}:

with lib;

let
  cfg = config.module.users;
in {
  options = {
    module.users.enable = mkEnableOption "Enables users";
  };

  config = mkIf cfg.enable {
    users = {
      mutableUsers = false;

      groups = { 
        ${username} = {
          gid = 1000;
        };
      };

      users = {
        ${username} = {
          uid                = 1000;
          home               = "/home/${username}";
          shell              = pkgs.bash;
          group              = "${username}";
          createHome         = true;
          description        = "${username}";
          isSystemUser       = true;
          hashedPassword     = "$6$o0qg..L6EMGo.l2k$4PFVHl.mumawQ9wMJc1Z4in2EgRh3oEDZ8cXqxnXAqNHkKWe4eWt.119L/fHMIQKO4slPBCd97A2zY9zurMRZ1";

          extraGroups = [
            "video"
            "audio"
            "networkmanager"
            "wheel"
            "docker"
            "libvirtd"
            "dialout"
          ];
        };

        root = {
          hashedPassword     = "$6$o0qg..L6EMGo.l2k$4PFVHl.mumawQ9wMJc1Z4in2EgRh3oEDZ8cXqxnXAqNHkKWe4eWt.119L/fHMIQKO4slPBCd97A2zY9zurMRZ1";
        };
      };
    };
  };
}
