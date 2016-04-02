
all: out/report.pdf

out/report.pdf: question_1.tex question_2.tex question_3.tex

out/%.pdf: %.tex
	pdflatex -output-directory=out $*.tex
	pdflatex -output-directory=out $*

.PHONY: clean
clean:
	rm -rf out/*
