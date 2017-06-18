texlive-latex-base:
  pkg.installed

texlive-latex-extra:
  pkg.installed:
    - require:
      - pkg: texlive-latex-base

texlive-latex-recommended:
  pkg.installed:
    - require:
      - pkg: texlive-latex-base
