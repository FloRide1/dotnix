{ pkgs, ... }: {

  programs.starship = {
    enable = false;

    settings = {
      add_newline = false;
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };
    };

  };
}
