base:
  '*':
    - packages
    - users
    - users.sudo
    {% for state in pillar.get('states') %}
    - {{state}}
    {% endfor %}
