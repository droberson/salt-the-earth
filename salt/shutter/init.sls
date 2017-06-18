{%- from "vars.jinja" import vars with context %}

shutter:
  {% if vars.usegui == True %}
  pkg.installed
  {% else %}
  pkg.removed
  {% endif %}
