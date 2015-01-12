.SUFFIXES: .pdf .tex 

LATEX=xelatex

all: pdf


pdf: eksofyllo.pdf ptyxiakh.tex ptyxiakh.bib introduction.tex chapter1.tex chapter2.tex chapter3.tex 
	${LATEX} ptyxiakh.tex
	bibtex ptyxiakh
	${LATEX} ptyxiakh.tex
	${LATEX} ptyxiakh.tex

clean:
	\rm -f ptyxiakh.pdf *.aux *.lo? *.cb* *.toc *.out *.bbl *.blg

