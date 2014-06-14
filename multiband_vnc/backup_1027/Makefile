BASE = multiband
SRC = multiband.tex conclusion.tex abstract.tex introduction.tex related.tex multiband.bib

all: $(BASE).ps 
b: $(BASE).bbl

$(BASE).bbl: $(BASE).tex $(SRC)
	latex $(BASE) 
	bibtex $(BASE)
	latex $(BASE) 
	latex $(BASE) 
#	dvips -t letter -Pcmz -f $(BASE).dvi > $(BASE).ps
	dvips -t letter -f $(BASE).dvi > $(BASE).ps
	ps2pdf -dEmbedAllFonts=true -dSubsetFonts=true -dEPSCrop=true $(BASE).ps $(BASE).pdf
	chmod 770 $(BASE).ps $(BASE).dvi $(BASE).aux $(BASE).bbl $(BASE).blg $(BASE).log $(BASE).pdf
	chmod g+s $(BASE).ps $(BASE).dvi $(BASE).aux $(BASE).bbl $(BASE).blg $(BASE).log $(BASE).pdf

$(BASE).ps : $(BASE).tex $(SRC)
	latex $(BASE) 
	latex $(BASE)
	dvips -t letter -f $(BASE).dvi > $(BASE).ps
	ps2pdf -dEmbedAllFonts=true -dSubsetFonts=true -dEPSCrop=true $(BASE).ps $(BASE).pdf
#	dvipdf $(BASE).dvi $(BASE).pdf
	chmod 770 $(BASE).ps $(BASE).dvi $(BASE).aux $(BASE).bbl $(BASE).blg $(BASE).log $(BASE).pdf
	chmod g+s $(BASE).ps $(BASE).dvi $(BASE).aux $(BASE).bbl $(BASE).blg $(BASE).log $(BASE).pdf

clean : 
	rm -f $(BASE).ps $(BASE).dvi $(BASE).aux $(BASE).bbl $(BASE).blg $(BASE).log $(BASE).toc $(BASE).lof $(BASE).pdf psfig.aux *~ *.bak
