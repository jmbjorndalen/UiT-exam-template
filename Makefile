.SUFFIXES: .tex .pdf 
TARGETS = exam.pdf exam-with-guide.pdf



all: $(TARGETS)

.tex.pdf: 
	pdflatex $<
	pdflatex $<

exam.pdf : *.tex 
exam-with-guide.pdf : *.tex 

clean:
	rm *.aux *.log $(TARGETS)
