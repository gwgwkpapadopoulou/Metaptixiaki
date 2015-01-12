.SUFFIXES: .pdf .tex 

LATEX=xelatex

all: pdf


pdf: eksofyllo.pdf ptyxiakn.tex ptyxiakn.bib introduction.tex chapter1.tex chapter2.tex chapter3.tex 
	${LATEX} ptyxiakn.tex
	bibtex ptyxiakn
	${LATEX} ptyxiakn.tex
	${LATEX} ptyxiakn.tex

clean:
	\rm -f ptyxiakn.pdf *.aux *.lo? *.cb* *.toc *.out *.bbl *.blg

