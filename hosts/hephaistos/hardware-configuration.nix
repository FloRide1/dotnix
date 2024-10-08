# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "thunderbolt" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/02c3b24f-0535-4d24-b1c4-7b497243605c";
    fsType = "ext4";
  };

  fileSystems."/boot/efi" = {
    device = "/dev/disk/by-uuid/1181-321F";
    fsType = "vfat";
    options = [ "fmask=0022" "dmask=0022" ];
  };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/52fb8889-7e1b-403e-8543-c8b168f0bdab"; }];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.br-0042dd2dd696.useDHCP = lib.mkDefault true;
  # networking.interfaces.br-543749858a49.useDHCP = lib.mkDefault true;
  # networking.interfaces.br-a4072311364c.useDHCP = lib.mkDefault true;
  # networking.interfaces.br-b824b46d785c.useDHCP = lib.mkDefault true;
  # networking.interfaces.br-b94da2d6bcd7.useDHCP = lib.mkDefault true;
  # networking.interfaces.br-f46a4651d9c9.useDHCP = lib.mkDefault true;
  # networking.interfaces.br-faf7bfebd47c.useDHCP = lib.mkDefault true;
  # networking.interfaces.docker0.useDHCP = lib.mkDefault true;
  # networking.interfaces.tailscale0.useDHCP = lib.mkDefault true;
  # networking.interfaces.veth5cedbba.useDHCP = lib.mkDefault true;
  # networking.interfaces.veth64add47.useDHCP = lib.mkDefault true;
  # networking.interfaces.veth72d5f9d.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp1s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode =
    lib.mkDefault config.hardware.enableRedistributableFirmware;
}
