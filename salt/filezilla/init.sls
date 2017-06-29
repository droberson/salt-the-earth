# filezilla -- FTP client

{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
filezilla:
  pkg.installed
{% endif %}

