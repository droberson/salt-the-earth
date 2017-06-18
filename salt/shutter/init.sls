{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
shutter:
  pkg.installed
{% endif %}
