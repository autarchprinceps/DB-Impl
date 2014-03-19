@echo off
rem build PDF file from given tex file and running makeindex

rem ***** make sure to be in the right directory
cd "%~dp1"

rem ***** name of tex file without ".tex" 
set texSource=%~n1
 
rem ***** run pdflatex 
pdflatex -interaction=nonstopmode "%texSource%.tex"
 
rem ***** build glossar
makeindex -q -s "%texSource%.ist" -t "%texSource%.glg" -o "%texSource%.gls" "%texSource%.glo"


rem ***** run pdflatex 
pdflatex -interaction=nonstopmode "%texSource%.tex"
 
::rem ***** build glossar
::makeindex -q -s "%texSource%.ist" -t "%texSource%.alg" -o "%texSource%.acr" "%texSource%.acn"
