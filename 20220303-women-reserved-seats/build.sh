#!/usr/bin/sh

DATE_COVER=$(date "+%d %B %Y")

SOURCE_FORMAT="markdown\
+pipe_tables\
+backtick_code_blocks\
+auto_identifiers\
+strikeout\
+yaml_metadata_block\
+implicit_figures\
+link_attributes\
+smart\
+fenced_divs"

# +all_symbols_escapable\


DATA_DIR="pandoc"
PDF_ENGINE="xelatex"
SOURCE="./20220303-women-reserved-seats.md"

case "$1" in
    "-preamble")
        pandoc -s --dpi=300 --slide-level 2 --toc --listings --shift-heading-level=0 --data-dir="${DATA_DIR}" --template default_mod.latex -H pandoc/templates/preamble.tex --pdf-engine "${PDF_ENGINE}" -f "$SOURCE_FORMAT" -M date="$DATE_COVER" -t beamer $SOURCE -o presentation_nice_formatting.pdf
        ;;
    *)
        pandoc -s --dpi=300 --slide-level 2 --toc --listings --shift-heading-level=0 --data-dir="${DATA_DIR}" --template default_mod.latex --pdf-engine "${PDF_ENGINE}" -f "$SOURCE_FORMAT" -M date="$DATE_COVER" -t beamer $SOURCE -o presentation.pdf
        ;;
esac
