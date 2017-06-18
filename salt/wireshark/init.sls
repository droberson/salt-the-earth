{%- from "vars.jinja" import vars with context %}

wireshark-ppa:
  pkgrepo.managed:
    - humanname: Wireshark Dev PPA
    - name: deb http://ppa.launchpad.net/wireshark-dev/stable/ubuntu xenial main
    - dist: xenial
    - file: /etc/apt/sources.list.d/wireshark.list
    - keyid: 14ECA0F0
    - keyserver: keyserver.ubuntu.com

{% if vars.usegui == True %}
wireshark-pkg:
  pkg.latest:
    - name: wireshark
    - refresh: True
    - require:
      - pkgrepo: wireshark-ppa
{% endif %}

tshark-pkg:
  pkg.latest:
    - name: tshark
    - refresh: True
    - require:
      - pkgrepo: wireshark-ppa

