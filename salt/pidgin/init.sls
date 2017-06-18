{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
pidgin:
  pkg.installed
{% endif %}
