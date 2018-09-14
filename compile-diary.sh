#!/bin/bash
# A script to compile the research diary
# Copyright from Krishna Kumar
# Distributed under GPLv2.0 License

compile="compile";
clean="clean";

if test -z "$2"
then
if [ $1 = $clean ]; then
        echo "Cleaning please wait ..."
	find . -type f -name '*~' -delete
	find . -type f -name '*.aux' -delete
	find . -type f -name '*.bbl' -delete
	find . -type f -name '*.blg' -delete
	find . -type f -name '*.d' -delete
	find . -type f -name '*.fls' -delete
	find . -type f -name '*.ilg' -delete
	find . -type f -name '*.ind' -delete
	find . -type f -name '*.toc*' -delete
	find . -type f -name '*.lot*' -delete
	find . -type f -name '*.lof*' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.idx' -delete
	find . -type f -name '*.out*' -delete
	find . -type f -name '*.nlo' -delete
	find . -type f -name '*.nls' -delete
	rm -rf $filename.pdf
	rm -rf $filename.ps
	rm -rf $filename.dvi
	rm -rf *#*
	echo "Cleaning complete!"
	exit
else
	echo "Shell script for compiling the research diary"
	echo "Usage: sh ./compile-diary.sh [OPTIONS] [filename]"
	echo "[option]  compile: Compiles the research diary"
	echo "[option]  clean: removes temporary files no filename required"
	exit
fi
fi

filename=$2;

if [ $1 = $clean ]; then
	echo "Cleaning please wait ..."
	find . -type f -name '*~' -delete
	find . -type f -name '*.aux' -delete
	find . -type f -name '*.bbl' -delete
	find . -type f -name '*.blg' -delete
	find . -type f -name '*.d' -delete
	find . -type f -name '*.fls' -delete
	find . -type f -name '*.ilg' -delete
	find . -type f -name '*.ind' -delete
	find . -type f -name '*.toc*' -delete
	find . -type f -name '*.lot*' -delete
	find . -type f -name '*.lof*' -delete
	find . -type f -name '*.log' -delete
	find . -type f -name '*.idx' -delete
	find . -type f -name '*.out*' -delete
	find . -type f -name '*.nlo' -delete
	find . -type f -name '*.nls' -delete
	rm -rf $filename.pdf
	rm -rf $filename.ps
	rm -rf $filename.dvi
	rm -rf *#*
	echo "Cleaning complete!"
	exit
elif [ $1 = $compile ]; then
        echo "Compiling your research diary...please wait...!"
	pdflatex $filename.tex
	find . -type f -name '*.aux' -exec bibtex {} \;
	makeindex $filename.aux
	makeindex $filename.idx
	makeindex $filename.nlo -s nomencl.ist -o $filename.nls
	pdflatex -interaction=nonstopmode $filename.tex
	makeindex $filename.nlo -s nomencl.ist -o $filename.nls
	pdflatex -interaction=nonstopmode $filename.tex
	echo "Success!"
	exit
fi


if test -z "$3"
then
	exit
fi
