all: 
	cp -r ~/Dropbox/Mendeley/bibtex/PROSPECT\ Sensor\ Manuscript.bib sensor-manuscript.bib
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
	#evince main.pdf &
	rm -rf *.aux *.log *.bbl *.blg *.spl *.out

clean:
	rm -rf *.aux *.log *.bbl *.blg *.pdf *.spl *.out
