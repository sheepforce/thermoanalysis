final: prev: {
  python3 = prev.qchem.python3.override (old: {
    packageOverrides = prev.lib.composeExtensions (old.packageOverrides or (_: _: { })) (pfinal: pprev: {
      thermoanalysis = pfinal.callPackage ./thermoanalysis.nix { };
    });
  });
}