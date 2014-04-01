#!/bin/bash
NAME=DB_Impl_Dokumentation

bibtex $NAME
pdflatex -interactive=nonstopmode $NAME.tex
makeindex -q -s $NAME.ist -t $NAME.gls $NAME.gls $NAME.glo
pdflatex -interactive=nonstopmode $NAME.tex
