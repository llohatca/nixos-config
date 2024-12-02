{
  programs.bash = {
    enable = true;
      shellAliases = {
        nv       = "nvim";
        ve       = "source ~/my_project_py/myvenv/bin/activate";
        ved      = "deactivate";
        nf       = "fastfetch";
        ls       = "ls -a";
        his      = "history";
        shadeon  = "hyprshade on ~/.config/hyprshade/shaders/blue-light-filter.glsl";
        shadeoff = "hyprshade off";


        upload_esp = "esptool.py --port /dev/ttyUSB0 write_flash -fm dio 0x00000 $1";
        compile_esp = "~/nixos-config/home/users/lulu/configs/bash/compile_esp.sh";
      };
  };
}
