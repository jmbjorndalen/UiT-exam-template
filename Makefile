.SUFFIXES: .tex .pdf 
TARGETS = exam.pdf exam-with-guide.pdf



all: $(TARGETS)

.tex.pdf:
	mkdir -p output
	pdflatex -output-directory=output $<
	pdflatex -output-directory=output $<
	rm output/*.aux output/*.log

exam.pdf : *.tex 
exam-with-guide.pdf : *.tex 

clean:
	rm -f output/*.aux output/*.log output/*.pdf
