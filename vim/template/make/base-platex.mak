MANUSCRIPT = {{_expr_:join(map(split(glob('*.tex'),"\n"),'"\t".substitute(v:val,"\\","/","g")')," \\\n")}}
DOCUMENT   = $(subst .tex,.pdf,$(MANUSCRIPT))

LATEX      = platex
DVIPDF     = dvipdfmx

.SUFFIXES: .tex .dvi .pdf

all: $(DOCUMENT)

%.pdf: %.dvi
	$(DVIPDF) $<

%.dvi: %.tex
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f *.dvi *.log *.aux $(DOCUMENT)
