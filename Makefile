vpath %.tex src/
LATEXMK = latexmk
LATEXMK_FLAGS = -pdf -pdflatex="pdflatex -interaction=nonstopmode"
DESTDIR = src

.PHONY: all clean

all: $(DESTDIR)/yh_resume.pdf

$(DESTDIR)/%.pdf: %.tex
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(basename $@) $<

clean:
	rm -f $(addprefix $(DESTDIR)/,$(wildcard *.aux)) $(addprefix $(DESTDIR)/,$(wildcard *.lof)) $(addprefix $(DESTDIR)/,$(wildcard *.log)) $(addprefix $(DESTDIR)/,$(wildcard *.lot)) $(addprefix $(DESTDIR)/,$(wildcard *.fls)) $(addprefix $(DESTDIR)/,$(wildcard *.out)) $(addprefix $(DESTDIR)/,$(wildcard *.toc)) $(addprefix $(DESTDIR)/,$(wildcard *.fdb_latexmk)) $(addprefix $(DESTDIR)/,$(wildcard *.fmt)) $(addprefix $(DESTDIR)/,$(wildcard *.fot)) $(addprefix $(DESTDIR)/,$(wildcard *.cb)) $(addprefix $(DESTDIR)/,$(wildcard *.cb2)) $(addprefix $(DESTDIR)/,$(wildcard .*.lb)) $(addprefix $(DESTDIR)/,$(wildcard *synctex.gz)) $(addprefix $(DESTDIR)/,$(wildcard *xdv)) $(addprefix $(DESTDIR)/,$(wildcard *dvi))