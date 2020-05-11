docker run --rm \
    -v `pwd`:/docs \
    strm/latex \
    pdflatex  -synctex=1 -interaction=nonstopmode -file-line-error -recorder \
    all.tex