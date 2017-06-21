{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
linphone:
  pkg.installed
{% else %}
linphone-nogtk:
  pkg.installed
{% endif %}

