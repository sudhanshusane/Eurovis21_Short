
SHELL = /bin/sh

all: sane_evis21.pdf

sane_evis21.pdf: *.tex 
	pdflatex sane_evis21
	pdflatex sane_evis21
	bibtex sane_evis21
	touch sane_evis21.tex
	pdflatex sane_evis21
	pdflatex sane_evis21


clean:
	if (rm -f *.log *.aux *.bbl *.blg *.out *.toc *.dvi *.ps *.brf *.lbl sane_evis21.pdf) then :; fi

