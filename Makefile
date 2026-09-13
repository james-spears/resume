# Builds the résumé using the same Docker images CI uses (see .github/workflows/main.yml),
# so local output matches what CI produces.

LATEX_IMAGE  := ghcr.io/xu-cheng/texlive-full:latest
PANDOC_IMAGE := pandoc/core:2.9
DOCKER_RUN   := docker run --rm -v "$(CURDIR):/workspace" -w /workspace --user "$(shell id -u):$(shell id -g)"

.PHONY: all pdf docx clean

all: pdf docx

pdf:
	$(DOCKER_RUN) -e TEXINPUTS=".:./src//:" $(LATEX_IMAGE) \
		latexmk -pdf -file-line-error -interaction=nonstopmode -halt-on-error -gg src/resume.tex

docx:
	$(DOCKER_RUN) $(PANDOC_IMAGE) -s ./src/resume.tex -o resume.docx --resource-path ./src

clean:
	rm -f resume.pdf resume.aux resume.log resume.fls resume.fdb_latexmk resume.docx
