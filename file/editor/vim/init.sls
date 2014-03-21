vim:
  pkg:
    - installed

{% for name, user in pillar.get('users', {}).items() %}
{%- if user == None -%}
{%- set user = {} -%}
{%- endif -%}
{%- set userHome = user.get('home', "/home/%s" % name) -%}

{%- if 'prime_group' in user and 'name' in user['prime_group'] %}
{%- set userGroup = user.prime_group.name -%}
{%- else -%}
{%- set userGroup = name -%}
{%- endif %}
{{userHome}}/.vimrc:
  file:
    - managed
    - source: salt://editor/vim/vimrc
    - user: {{name}}
    - group: {{userGroup}}
    - mode: 600
    - require:
      - pkg: vim
