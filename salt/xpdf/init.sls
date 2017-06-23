{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
xpdf:
  pkg.installed
{% endif %}
