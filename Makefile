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
	pandoc -f gfm -s README.md -o Resume.pdf
