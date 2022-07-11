TEX = pandoc
src = CVTemplate.tex CVContentTemplate.yml

CVTemplate.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$<

.PHONY: clean
clean :
	rm output.pdf