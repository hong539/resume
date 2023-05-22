vpath %.tex src/resume/
LATEXMK = latexmk
LATEXMK_FLAGS = -pdf -pdflatex="pdflatex -interaction=nonstopmode"

.PHONY: all clean

all: yh_resume.pdf

%.pdf: %.tex
    $(LATEXMK) $(LATEXMK_FLAGS) $<

clean:
	$(LATEXMK) -C
