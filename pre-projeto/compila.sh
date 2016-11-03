rm -fr *.aux *.bbl *.blg *.lof *.lot *.log *.pdf
latexmk -pdf -bibtex pre-projeto.tex
#pdflatex pre-projeto.tex
#bibtex pre-projeto
#makeindex pre-projeto.idx
#makeindex pre-projeto.nlo -s nomencl.ist -o pre-projeto.nls
#pdflatex pre-projeto.tex
