{ ... }:
{
  nixpkgs.config.permittedInsecurePackages = [
    "qtwebengine-5.15.19"
    "electron-40.10.5"
  ];

  programs.mango.enable = true;

  services.displayManager = {
    default.session = "mango";
  };

  services.gnome.gnome-keyring.enable = true;
  programs.seahorse.enable = true;
  programs.dconf.enable = true;
}
