all: latexmk

latexmk:
	latexmk -pdf LDRD_IR_JLG_MM_ST.tex

todo:
	grep -R -s -n TODO *.tex

clean:
	rm -f *.fls *.fdb_latexmk *.aux *.log *.dvi *.bbl *.blg *.ilg *.ind *.toc *.idx *.out *.nav *.snm *.thm

distclean: clean
	git clean -f
