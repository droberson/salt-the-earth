{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
keepassx:
  pkg.installed
{% endif %}

kpcli:
  pkg.installed
