#!/bin/sh

find commands -type f -iname "*.tex" -exec echo "\\input{{}}" \; > ./input.tex
/Library/TeX/texbin/lualatex --output-directory=./build/ ./lab_report.tex

if [ -n "$(which open)" ]; then
  open ./build/lab_report.pdf
fi

