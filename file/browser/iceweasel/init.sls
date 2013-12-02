mozilla_repos:
  pkgrepo.managed:
    - humanname: Debian Mozilla unstable repo
    - name: deb http://cdn.debian.net/debian experimental main
    - dist: testing
    - file: /etc/apt/sources.list.d/mozilla-unstable.list
    - require_in:
      - pkg: iceweasel
  pkgrepo.managed:
    - humanname: Debian Mozilla experimental repo
    - name: deb http://cdn.debian.net/debian experimental main
    - dist: unstable
    - file: /etc/apt/sources.list.d/mozilla-experimental.list

iceweasel:
  pkg.installed:
    - fromrepo: experimental
    - require:
      - pkg: iceweasel_extensions

iceweasel_extensions:
  pkg.installed:
    - pkgs:
      - iceweasel-vimperator
      - xul-ext-adblock-plus
      - xul-ext-firebug
      - xul-ext-https-everywhere
      - xul-ext-livehttpheaders
      - xul-ext-noscript
