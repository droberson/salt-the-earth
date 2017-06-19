{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
libreoffice:
  pkg.installed
{% endif %}

