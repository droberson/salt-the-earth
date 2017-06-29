# audacity -- GUI audio editor

{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
audacity:
  pkg.installed
{% endif %}

