debian_deb:
  pkgrepo.managed:
    - file: /etc/apt/sources.list
    - name: deb http://ftp.{{pillar.get('lang', '')+'.'}}debian.org/debian/ {{pillar.get('dist', 'stable')}} {{' '.join(pillar.get('comps', ['main']))}}

debian_deb_src:
  pkgrepo.managed:
    - file: /etc/apt/sources.list
    - name: deb-src http://ftp.{{pillar.get('lang', '')+'.'}}debian.org/debian/ {{pillar.get('dist', 'stable')}} {{' '.join(pillar.get('comps', ['main']))}}
