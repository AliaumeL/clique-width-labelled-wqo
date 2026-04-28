.PHONY: clean all

PAPER=cwqo
SRC=src/*.tex             \
    lib/*.tex             \
    papers.bib            \
    lib/knowledges.kl     \
    ensps-colorscheme.sty \
    $(PAPER).md

all: $(PAPER).sigconf.pdf

# Default target: create the pdf file
%.pdf: %.tex 
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" $<

$(PAPER).arxiv.txt: ./paper-meta.yaml
	pandoc -t plain \
		     --output $(PAPER).arxiv.txt \
				 --template=./arxiv-submission.txt \
				 --metadata-file=./paper-meta.yaml \
				 --wrap=none \
		     $(PAPER).md

$(PAPER).sigconf.tex: $(SRC) ./paper-meta.yaml
	pandoc -t latex \
		     --output $(PAPER).sigconf.tex \
			 --defaults acmart \
			 --metadata-file=./paper-meta.yaml \
			 --wrap=none \
		     $(PAPER).md

$(PAPER).lipics.tex: $(SRC) ./paper-meta.yaml
	pandoc -t latex \
		   --output $(PAPER).lipics.tex \
			 --defaults lipics \
			 --metadata-file=./paper-meta.yaml \
			 --wrap=none \
		     $(PAPER).md

$(PAPER).plain.tex: $(SRC) ./paper-meta.yaml
	pandoc -t latex \
		     --output $(PAPER).plain.tex \
			 --defaults plain \
			 --metadata-file=./paper-meta.yaml \
			 --metadata=draft:false \
			 --metadata=camera-ready:true \
			 --metadata=anonymous:false \
			 --wrap=none \
		     $(PAPER).md

# Create a single file tex document for arXiv
$(PAPER).arxiv.tex: $(PAPER).plain.pdf ./paper-meta.yaml
	latexpand -o $(PAPER).arxiv.tex           \
		        --empty-comments                \
		        --expand-bbl $(PAPER).plain.bbl \
						--verbose \
						$(PAPER).plain.tex
	@rm $(PAPER).plain.*

# Create an archive with the single file tex document and the license
$(PAPER).arxiv.tar.gz: $(PAPER).arxiv.tex
	tar -czf $(PAPER).arxiv.tar.gz \
           $(PAPER).arxiv.tex    \
			 plainurl.bst              \
			 ensps-colorscheme.sty

$(PAPER).arxiv.pdf: $(PAPER).arxiv.tar.gz
	# create temporary directory
	@mkdir -p /tmp/$(PAPER).arxiv
	# extract archive
	@tar -xzf $(PAPER).arxiv.tar.gz -C /tmp/$(PAPER).arxiv
	# compile in the temporary directory
	cd  /tmp/$(PAPER).arxiv && latexmk -pdf $(PAPER).arxiv.tex
	# extract the pdf 
	@cp /tmp/$(PAPER).arxiv/$(PAPER).arxiv.pdf ./
	# delete the temporary directory
	@rm -rf /tmp/$(PAPER).arxiv/

clean: 
	latexmk -C
	rm -f *.tex *.tar.gz *.aux *.bbl *.kaux *.blg *.log *.out *.fls *.fdb_latexmk *.synctex.gz
