# chirp -- program various HT radios

{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
chirp-ppa:
  pkgrepo.managed:
    - humanname: CHIRP Daily Snapshots PPA
    - name: deb http://ppa.launchpad.net/dansmith/chirp-snapshots/ubuntu xenial main
    - dist: xenial
    - file: /etc/apt/sources.list.d/chirp-daily.list
    - keyid: 3BC5163F
    - keyserver: keyserver.ubuntu.com


chirp-pkg:
  pkg.latest:
    - name: chirp-daily
    - refresh: True
    - require:
      - pkgrepo: chirp-ppa
{% endif %}
