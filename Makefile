# Variables for source and export documents
SOURCE_DOC := yangyuanchen_liu_cv.md
SOURCE_DOC_CN := yangyuanchen_liu_cv_cn.md
EXPORT_DOC := $(SOURCE_DOC:.md=.pdf)
EXPORT_DOC_CN := $(SOURCE_DOC_CN:.md=.pdf)

# Template and defaults (commented out as per your example)
# TEMPLATE := temp/cv
# DEFAULTS := defaults.yaml

# PDF options for pandoc
# fonts: Noto Sans CJK SC/ Noto Serif CJK SC/ WenQuanYi Micro Hei/ WenQuanYi Zen Hei/ Unifont
PDF_OPTIONS = -V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \
							--citeproc \
							-L filters/multibib.lua \
							-L filters/highlight-authors.lua \
							--pdf-engine=xelatex \
							# -V mainfont="WenQuanYi Zen Hei Mono"

# Build targets
all: pdf

.PHONY: all clean pdf

# Rule for building both PDFs
pdf: $(EXPORT_DOC) $(EXPORT_DOC_CN)

# Rule for the English version
$(EXPORT_DOC): $(SOURCE_DOC)
	pandoc $(PDF_OPTIONS) $< -o $@

# Rule for the Chinese version
$(EXPORT_DOC_CN): $(SOURCE_DOC_CN)
	pandoc $(PDF_OPTIONS) $< -o $@

# Clean up generated files
clean:
	rm -f $(EXPORT_DOC) $(EXPORT_DOC_CN)
