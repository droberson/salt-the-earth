# GNS3 
{%- from "vars.jinja" import vars with context %}

gns3-ppa:
  pkgrepo.managed:
    - humanname: GNS3 PPA
    - name: deb http://ppa.launchpad.net/gns3/ppa/ubuntu xenial main
    - dist: xenial
    - file: /etc/apt/sources.list.d/gns3.list
    - keyid: A2E3EF7B
    - keyserver: keyserver.ubuntu.com

{% if vars.usegui == True %}
gns3-pkg:
  pkg.latest:
    - name: gns3
    - refresh: True
    - require:
      - pkgrepo: gns3-ppa
{% endif %}

