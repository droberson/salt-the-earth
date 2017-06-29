# emacs -- emacs text editor

{%- from "vars.jinja" import vars with context %}

emacs-ppa:
  pkgrepo.managed:
    - humanname: Emacs Daily Snapshot PPA
    - name: deb http://ppa.launchpad.net/ubuntu-elisp/ppa/ubuntu xenial main
    - dist: xenial
    - file: /etc/apt/sources.list.d/emacs-daily.list
    - keyid: D62FCE72
    - keyserver: keyserver.ubuntu.com

emacs-pkg:
  pkg.latest:
    {% if vars.usegui == True %}
    - name: emacs24
    {% else %}
    - name: emacs24-nox
    {% endif  %}
    - refresh: True
    - require:
      - pkgrepo: emacs-ppa

mg:
  pkg.installed
