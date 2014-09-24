all: full-CV.pdf resume.md resume.rst index.html

full-CV.pdf: full-CV.tex
	pdflatex full-CV.tex
	cp full-CV.pdf full-CV-camille-scott.pdf

resume.md: full-CV.tex
	pandoc full-CV.tex -o resume.md

resume.rst: full-CV.tex
	pandoc full-CV.tex -o resume.rst

index.html: full-CV.tex
	pandoc full-CV.tex -o index.html
clean:
	rm -f *.aux *.dvi full-CV.pdf full-CV-camille-scott.pdf
