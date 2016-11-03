SOURCEDOCUMENT=pre-projeto
PRESENTATIONSOURCE=apresentacao
PDFVIEWER=/Applications/Preview.app/Contents/MacOS/Preview
#PDFVIEWER=evince
CAPITULOS=$(wildcard *.tex)

#######################################

all: $(SOURCEDOCUMENT).pdf

view: $(SOURCEDOCUMENT).pdf
	$(PDFVIEWER) $(SOURCEDOCUMENT).pdf &

slides: $(PRESENTATIONSOURCE).pdf
	
view-slides: $(PRESENTATIONSOURCE).pdf 
	$(PDFVIEWER) "/Users/galiza/estudos/mestrado/pre-projeto/$(PRESENTATIONSOURCE).pdf" &

$(PRESENTATIONSOURCE).pdf: $(PRESENTATIONSOURCE).tex $(SOURCEDOCUMENT).bib
	pdflatex $< && \
	bibtex $(PRESENTATIONSOURCE) && \
	pdflatex $< && \
	pdflatex $< || \
	$(RM) $@

$(SOURCEDOCUMENT).pdf: $(SOURCEDOCUMENT).tex
	latexmk -pdf $(SOURCEDOCUMENT).tex

clean:
	$(RM) *.aux *.bbl *.blg *.lof *.lot *.log $(SOURCEDOCUMENT).pdf *~ \
	*.toc *.ilg *.sigla *.siglax *.symbols *.symbolsx $(PRESENTATIONSOURCE).pdf
