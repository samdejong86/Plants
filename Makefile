SRC = *.tex
TEX = pdflatex
BIBTEX = bibtex
VIEWER = evince
EDITOR = gedit

MAIN = PlantMusings

all: $(MAIN).pdf

clean:
	@rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.glo *.nav *.snm *.ist *.vrb $(MAIN).pdf

clean_junk:
	@rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.glo *.nav *.snm *.ist *.vrb

view:  $(MAIN).pdf
	@$(VIEWER) $(MAIN).pdf >> /dev/null 2>&1 &

edit:
	@$(EDITOR) *.tex >> /dev/null 2>&1 &

$(MAIN).pdf: $(SRC)
	$(TEX) $(MAIN).tex
	$(TEX) $(MAIN).tex
	$(TEX) $(MAIN).tex
