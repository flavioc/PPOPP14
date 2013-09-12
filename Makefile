
all: paper.pdf

clean:
	rm -f paper.pdf paper.aux paper.blg paper.bbl paper.log introduction.log

paper.pdf: paper.tex Makefile meld.tex \
		introduction.tex related.tex refs.bib \
		runtime.tex programs.tex parallel.tex \
		experiments.tex abstract.tex \
		conclusions.tex
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex
