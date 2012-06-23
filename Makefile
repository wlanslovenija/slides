all: 000-intro.pdf 001-kaj-je-wlan-slovenija.pdf 002-brezzicne-komunikacije.pdf 003-wifi-racunalniske-komunikacije.pdf 004-popularne-brezzicne-komunikacije.pdf

%.pdf: %.tex VERSION.tex
	pdflatex -interaction=batchmode "$<"
	pdflatex -interaction=batchmode "$<"

clean:
	rm -f *.pdf *.log *.toc *.aux *.out *.nav *.snm

.PHONY: all clean

.SUFFIXES: .pdf .tex
