# ARRL Field Day data site

This repo contains files related to Rick Gilmore's exploration of the ARRL Field Day data.

## Contents

- `*.qmd`: [Quarto](https://quarto.org) source documents.
- `_quarto.hml`: YAML parameter file.
- `renv.lock`: Lockfile used by the {renv} package.
- `data/`: Data directories.
- `docs/`: Rendered web site.
- `include/`: Supporting files.
- `R/`: Supporting R functions.

## Usage

To render the report:

1. Clone the repository.
2. Install the {renv} package.
3. Install package dependencies suggested by {renv}.
4. Install Quarto.
5. Render the site by executing `quarto render` in a terminal.
6. View the rendered site by opening one of the `*.html` files in `docs/`.
