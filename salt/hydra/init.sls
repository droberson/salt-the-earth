# hydra -- network-based login cracker

{%- from "vars.jinja" import vars with context %}

hydra:
  pkg.installed

{% if vars.usegui == True %}
hydra-gtk:
  pkg.installed
{% endif %}
