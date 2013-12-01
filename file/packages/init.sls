packages:
  pkg.installed:
    - pkgs:
      {% for pkg in pillar.get('packages', []) %}
      - {{pkg}}
      {% endfor %}
