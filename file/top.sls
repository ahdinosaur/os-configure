base:
  '*':
    - packages
    - users
    {% for state in pillar.get('states') %}
    - {{state}}
    {% endfor %}
