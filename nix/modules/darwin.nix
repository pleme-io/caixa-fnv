# nix/modules/darwin.nix — auto-generated from fnv.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.fnv; in {
  options.services.fnv = {
    enable = lib.mkEnableOption "fnv";
    package = lib.mkOption { type = lib.types.package; default = pkgs.fnv or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
