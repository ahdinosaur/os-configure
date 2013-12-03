iceweasel:
  pkg.installed:
    - require:
      - pkg: iceweasel_extensions

iceweasel_extensions:
  pkg.installed:
    - pkgs:
      - xul-ext-pentadactyl
      - xul-ext-adblock-plus
      - xul-ext-firebug
      - xul-ext-https-everywhere
      - xul-ext-noscript
