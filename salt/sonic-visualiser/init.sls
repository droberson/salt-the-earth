{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
sonic-visualiser:
  pkg.installed
{% endif}
