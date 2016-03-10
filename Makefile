PRJ = $(notdir $(CURDIR))

TEX = $(PRJ).tex ../texheader/mini.tex bib.tex

LATEX = pdflatex -halt-on-error
$(PRJ).pdf: $(TEX) Makefile
	$(LATEX) $< && $(LATEX) $<

.PHONY: clean
clean:
	rm -rf *.log *.aux *.out *.toc