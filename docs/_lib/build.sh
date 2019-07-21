#!/bin/bash


SRC="$(realpath "$(dirname "$0")"/..)"
LIB="$SRC"/_lib
DEST="$SRC"/downloads
FILENAMEBASE=Graphentechnologien
TEMPLATES="$SRC"/_includes
BUILDOPTS=(--standalone --toc --toc-depth=3 --number-sections --default-image-extension=png --wrap=none)
LATEXOPTS=(--pdf-engine=pdflatex --variable=documentclass=scrreprt --variable=mainfont='Linux Libertine O' --variable=sansfont='Linux Biolinum O' --variable=colorlinks)

cd "$SRC"/

# LATEX
/usr/bin/pandoc -o "$DEST"/"$FILENAMEBASE".tex "${BUILDOPTS[@]}" "${LATEXOPTS[@]}" \
       --filter "$LIB"/divtoenv.py --filter "$LIB"/internallinks.py \
       --include-in-header "$TEMPLATES"/latex-defs.tex ??_*.md

# PDF
/usr/bin/pandoc -o "$DEST"/"$FILENAMEBASE".pdf "${BUILDOPTS[@]}" "${LATEXOPTS[@]}" \
       --filter "$LIB"/divtoenv.py --filter "$LIB"/internallinks.py \
       --include-in-header "$TEMPLATES"/latex-defs.tex ??_*.md

# EPUB
#pandoc -o "$DEST"/"$FILENAMEBASE".epub "${BUILDOPTS[@]}" \
#        --filter "$LIB"/internallinks.py ??_*.md

# ODT
#pandoc -o "$DEST"/"$FILENAMEBASE".odt "${BUILDOPTS[@]}" \
#        --filter "$LIB"/internallinks.py ??_*.md
