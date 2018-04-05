# Compile latex docs with a different output directory
# http://tex.stackexchange.com/questions/87816/is-there-a-way-to-configure-pdflatex-to-make-all-but-the-tex-and-pdf-files-hid

# SHELL = /bin/bash

LATEXMK = latexmk
PDFLATEX = pdflatex
# LATEXOPTS = --synctex=1 --src-specials --shell-escape
LATEXOPTS = --src-specials --shell-escape
TMPDIR_BASE = _build

ifdef PVC
	PVC_OPTION = -pvc
endif

# all: texput.pdf

%.sol.tex: %.tex
	sed -e 's|^\\tcbset{lowerbox=ignored}|% \\tcbset{lowerbox=ignored}|g' $< > $@

%.pdf: %.tex FORCE
	$(LATEXMK) $(PVC_OPTION) -pdf -recorder \
	  -pdflatex='$(PDFLATEX)' -latexoption='$(LATEXOPTS)' \
	  $< || true

clean:
	latexmk -C
	rm *.listing || true
	rm *.pyg || true

FORCE:

