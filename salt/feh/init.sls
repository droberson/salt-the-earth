# feh -- image viewer

{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
feh:
  pkg.installed
{% endif %}
