{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
gimp:
  pkg.installed
{% endif %}


