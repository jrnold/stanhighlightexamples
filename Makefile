outputs := stan_with_minted.pdf stan_with_fancyvrb.pdf stan_with_listings.pdf

all: $(outputs)

clean:
	$(foreach var,$(outputs),latexmk -C $(var);)

%.pdf: %.tex
	latexmk -pdf -pdflatex='pdflatex -shell-escape -interaction=nonstopmode -file-line-error' $^
