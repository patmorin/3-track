
ipefigs=$(wildcard figs/*.ipe)
slidefigs=$(wildcard figs/*.ipe)

3-track.pdf : figs 3-track.tex 3-track.bib $(ipefigs)
	latexmk -pdf 3-track.tex 	

figs: $(ipefigs)
	(cd figs; make)

clean :
	rm -f 3-track.pdf figs/*.pdf
