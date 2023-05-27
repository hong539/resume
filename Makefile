vpath %.tex src/
LATEXMK = latexmk
LATEXMK_FLAGS = -pdf -pdflatex="pdflatex -interaction=nonstopmode"
DESTDIR = src

.PHONY: all clean

all: $(DESTDIR)/yh_resume.pdf

$(DESTDIR)/%.pdf: %.tex
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(basename $@) $<

clean:
	rm -f src/*.aux src/*.fdb_latexmk src/*.fls src/*.log src/*.out src/*.synctex.gz src/*.xdv