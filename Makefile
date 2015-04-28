all: main

main: *.tex *.bib
	pdflatex main
	-bibtex main
	pdflatex main
	pdflatex main

clean:
	rm -f main.aux main.bbl main.blg main.log

cleanest: clean
	rm -f main.pdf *-converted-to.pdf main.out

.PHONY: clean cleanest
