{ config, pkgs, ... }:

{
  # Configure the development environment
  imports = [
    ./nvim/index.nix
    ./fish.nix
    ./zsh.nix
    ./bat.nix
    ./git.nix
    ./starship.nix
  ];

  home.sessionVariables = {
    MANPAGER = "nvim +Man!";
  };

  home.packages = with pkgs; [
    tokei
    htop

    clang
    # Everything else can be installed in nix-shells
  ];
}
