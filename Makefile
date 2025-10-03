vpath %.tex src/
LATEXMK = latexmk
LATEXMK_FLAGS = -f -pdf -pdflatex="pdflatex -interaction=nonstopmode"
DESTDIR = src

.PHONY: all clean

all: $(DESTDIR)/yh_resume.pdf

$(DESTDIR)/%.pdf: %.tex
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(basename $@) $<

clean:
	rm -f src/*.aux src/*.fdb_latexmk src/*.fls src/*.log src/*.out src/*.synctex.gz src/*.xdv src/*.4ct src/*.4tc src/*.dvi src/*.idv src/*.lg src/*.tmp src/*.xref