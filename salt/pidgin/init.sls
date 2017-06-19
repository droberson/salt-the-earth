{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
pidgin:
  pkg.installed

pidgin-otr:
  pkg.installed
{% endif %}
