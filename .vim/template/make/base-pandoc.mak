MANUSCRIPT = {{_expr_:glob('*.md')}}
DOCUMENT   = $(subst .md,.pdf,$(MANUSCRIPT))

FILTER     = pandoc-crossref pandoc_import_code_filter
OPTIONS    = $(addprefix --filter=,$(FILTER))

.SUFFIXES: .md .pdf

all: $(DOCUMENT)

.md.pdf :
	pandoc $< -o $@ --pdf-engine=lualatex $(OPTIONS)

clean:
	rm -rf $(DOCUMENT)
