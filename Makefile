all: nodewatcher-ris-2016.pdf

%.pdf: %.tex VERSION.tex
	pdflatex -interaction=batchmode "$<"
	pdflatex -interaction=batchmode "$<"

clean:
	rm -f *.pdf *.log *.toc *.aux *.out *.nav *.snm

.PHONY: all clean

.SUFFIXES: .pdf .tex
