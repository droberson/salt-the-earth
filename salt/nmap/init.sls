{%- from "vars.jinja" import vars with context %}

nmap:
  pkg.installed

ndiff:
  pkg.installed

{% if vars.usegui == True %}
zenmap:
  pkg.installed
{% endif %}
