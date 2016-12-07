all:
	pdflatex report_example.tex
	bibtex report_example.aux
	pdflatex report_example.tex
	pdflatex report_example.tex
