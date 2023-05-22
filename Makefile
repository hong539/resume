vpath %.tex src/resume/
LATEXMK = latexmk
LATEXMK_FLAGS = -pdf -pdflatex="pdflatex -interaction=nonstopmode"

.PHONY: all clean

all: yh_resume.pdf

%.pdf: %.tex
	$(LATEXMK)	$(LATEXMK_FLAGS)	$<

clean:
	rm -f *.aux *.lof *.log *.lot *.fls *.out *.toc *.fdb_latexmk *.fmt *.fot *.cb *.cb2 .*.lb *.synctex.gz *.xdv *.dvi