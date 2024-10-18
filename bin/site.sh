#!/bin/bash

DIR=$(pwd)
PKGDOWN="$DIR/pkgdown"

# Rscript -e "remotes::install_github('nteetor/pkgdown@master-nt-preserve-html')"
# Rscript -e "devtools::install(quick = TRUE, build = FALSE, upgrade = FALSE, keep_source = TRUE)"

Rscript -e "\
rmarkdown::render(
knit_root_dir = '$PKGDOWN',
input = 'pkgdown/index.Rmd',
output_file = 'index.md',
output_dir = 'pkgdown',
clean = TRUE
)
"

rm $PKGDOWN/index.html

# Rscript -e "pkgdown::build_site(
#   override = list(
#     destination = '$PKGDOWN/site'
#   )
# )"

# # not sure why pkgdown is creating nested site folders
# rm -rf $PKGDOWN/site/site

# open $PKGDOWN/site/index.html
