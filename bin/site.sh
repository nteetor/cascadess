#!/bin/bash

DIR=$(pwd)
PKGDOWN="$DIR/pkgdown"

Rscript -e "\
rmarkdown::render(
knit_root_dir = '$PKGDOWN',
input = 'pkgdown/index.Rmd',
output_file = 'index.md',
output_dir = 'pkgdown'
)
"

Rscript -e "pkgdown::build_site(
  override = list(
    destination = '$PKGDOWN/site'
  )
)"

open $PKGDOWN/site/index.html
