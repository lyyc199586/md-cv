
SOURCE_DOC := main.md
EXPORT_DOC := $(SOURCE_DOC:.md=.pdf)

# TEMPLATE := temp/cv
# DEFAULTS := defaults.yaml
PDF_OPTIONS = -V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \
							--citeproc \
							-L filters/multibib.lua \
							-L filters/highlight-authors.lua

all: pdf

.PHONY: all clean

pdf: 
	pandoc $(PDF_OPTIONS) $(SOURCE_DOC) -o $(EXPORT_DOC)