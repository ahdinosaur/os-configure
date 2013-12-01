{% for user, opts in pillar.get('users', {}).items() %}
{{user}}:
  user.present: {{opts | yaml}}
{% endfor %}
