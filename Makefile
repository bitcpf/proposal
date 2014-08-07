
proposal_pcui.pdf : proposal_pcui.ps
	ps2pdf proposal_pcui.ps

proposal_pcui.ps : proposal_pcui.dvi
	dvips -t letter proposal_pcui.dvi -o proposal_pcui.ps

proposal_pcui.dvi : proposal_pcui.tex
	latex proposal_pcui.tex
	latex proposal_pcui.tex
	latex proposal_pcui.tex
	bibtex proposal_pcui
	latex proposal_pcui.tex
	latex proposal_pcui.tex
	latex proposal_pcui.tex

open : proposal_pcui.ps
	evince proposal_pcui.ps &

clean :
	\rm -f *.aux *.bbl *.blg *.dvi *.idx *.lof *.log *.lot *.toc

