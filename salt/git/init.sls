git-ppa:
  pkgrepo.managed:
    - humanname: Ubuntu Git Maintainers
    - name: deb http://ppa.launchpad.net/git-core/ppa/ubuntu xenial main
    - dist: xenial
    - file: /etc/apt/sources.list.d/git-core-ubuntu-ppa-xexinial.list
    - keyid: E1DF1F24
    - keyserver: keyserver.ubuntu.com

git-pkg:
  pkg.latest:
    - name: git
    - refresh: True
    - require:
      - pkgrepo: git-ppa


