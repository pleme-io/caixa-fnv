# nix/modules/home-manager.nix — auto-generated from fnv.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.fnv; in {
  options.programs.fnv = {
    enable = lib.mkEnableOption "fnv";
    package = lib.mkOption { type = lib.types.package; default = pkgs.fnv or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
