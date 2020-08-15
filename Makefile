.PHONY: all
all: pdf

.PHONY: clean
clean:
	rm -f Resume.pdf

.PHONY: clean-all
clean-all: clean all

.PHONY: pdf
pdf: Resume.pdf

Resume.pdf:
	pandoc -f markdown_mmd -s README.md -o Resume.pdf -V geometry:margin=15mm
