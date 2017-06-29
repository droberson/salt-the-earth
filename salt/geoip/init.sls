# geoip -- tools to geolocate IP addresses

geoip-bin:
  pkg.installed

geoip-database:
  pkg.installed:
    - require:
      - pkg: geoip-bin


