MANUSCRIPT = {{_expr_:join(map(split(glob('*.tex'),"\n"),'"\t".substitute(v:val,"\\","/","g")')," \\\n")}}
DOCUMENT   = $(subst .tex,.pdf,$(MANUSCRIPT))

PLATEX      = platex
DVIPDF      = dvipdfmx

.SUFFIXES: .tex .dvi .pdf

all: $(DOCUMENT)

%.pdf: %.dvi
	$(DVIPDF) -f ipa.map $<

%.dvi: %.tex
	$(PLATEX) $<
	$(PLATEX) $<

clean:
	rm -f *.dvi *.log *.aux $(DOCUMENT)
