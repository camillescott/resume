all: public-CV.pdf index.html

public-CV.pdf: public-CV.tex camille_resume.cls
	pdflatex public-CV.tex

clean:
	rm -f *.aux *.dvi *.log public-CV.pdf
