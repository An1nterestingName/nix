# An1nterestingName/nix
This is the repository for my NixOS configuration. I have this repository in ~/nix and then have /etc/nixos symlinked to it.

Note: You will need to provide hardware-configuration.nix yourself from the automatically generated one, and will need to create an empty personal.nix file as well. If you are not using an Nvidia GPU, remove the import for nvidia.nix.