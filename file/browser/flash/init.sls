flash:
  pkg.installed:
    - name: flashplugin-nonfree

debian_nonfree:
  pkgrepo.managed:
    - file: deb http://ftp.us.debian.org/debian/
    - dist: {{salt['pillar.get']('debian:dist', 'stable')}}
    - comps: main,contrib,non-free
    - require:
      - pkgrepo: debian
    - require_in:
      - pkg: flash
