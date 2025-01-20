# Markdown-cv

This project uses Pandoc to compile markdown files into a CV in PDF format.

## Installation

First, ensure you have Pandoc and LaTeX installed on your system. You can install Pandoc from [here](https://pandoc.org/installing.html) and LaTeX from [here](https://www.latex-project.org/get/).

## Usage

To generate the CV PDFs, simply run:

```sh
make
```

This will generate two PDF files:

- `cv.pdf` (English version)
- `cv_cn.pdf` (Chinese version)

## Project Structure

The project is organized as follows:

```
md-cv/
├── Makefile
├── README.md
├── cv.md
├── cv_cn.md
├── filters/
│   ├── custom-filter.py
│   ├── multibib.lua
│   └── highlight-authors.lua
├── pub/
│   ├── paper.bib
│   └── conference.bib
└── cv.csl
```

- `Makefile`: Contains the commands to generate the PDFs.
- `README.md`: This file, containing information about the project.
- `cv.md`: The markdown file for the English version of the CV.
- `cv_cn.md`: The markdown file for the Chinese version of the CV.
- `filters/`: Directory containing custom Pandoc filters.
  - `custom-filter.py`: A sample custom filter script written in Python.
  - `multibib.lua`: Lua filter for creating multiple bibliographies.
  - `highlight-authors.lua`: Lua filter for highlighting authors in the bibliography.
- `pub/`: Directory containing bibliography files.
  - `paper.bib`: Bibliography file for journal papers.
  - `conference.bib`: Bibliography file for conference papers.
- `cv.csl`: Citation Style Language file for formatting references.

## Filters

Pandoc filters can be used to modify the content or formatting of the markdown files before they are converted to PDF. You can specify filters in the `Makefile`.

The `filters/` directory contains custom filters, such as:

- `multibib.lua`: Lua filter for creating multiple bibliographies.
- `highlight-authors.lua`: Lua filter for highlighting authors in the bibliography.
