{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
xclip:
  pkg.installed
{% endif %}
