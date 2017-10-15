TEX_SRC=$(shell find * -type f -iname "*.tex")
PDF_TARGET=$(TEX_SRC:.tex=.pdf)

%.pdf: %.tex
	xelatex -shell-escape $<
	xelatex -shell-escape $<

all: $(PDF_TARGET)
clean:
	-rm -rf *.nav *.fls *.fdb_latexmk *.aux *.log *.toc *\~ *.out *.snm *.vrb *.lot _minted-*/
