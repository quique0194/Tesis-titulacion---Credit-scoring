#!/bin/bash

mkdir build/

# We need this sequence: pdflatex -> bibtex -> pdflatex -> pdflatex
# See https://tex.stackexchange.com/a/204298
pdflatex -output-directory build/ tesis.tex
bibtex build/tesis
pdflatex -output-directory build/ tesis.tex
pdflatex -output-directory build/ tesis.tex
