debian:
  pkgrepo.managed:
    - file: deb http://ftp.{{pillar.get('debian:mirror', '')+'.'}}debian.org/debian/
    - dist: {{salt['pillar.get']('debian:dist', 'stable')}}
    - comps: {{','.join(salt['pillar.get']('debian:comps', ['main']))}}
