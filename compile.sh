#!/bin/bash

# 使用 XeLaTeX 编译
xelatex -no-pdf main.tex
xelatex main.tex

# 运行 BibTeX
bibtex main

# 再次运行 XeLaTeX 两次以更新引用
xelatex main.tex
xelatex main.tex

# 清理临时文件
rm -f *.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg 