#!/bin/bash

echo "# Old Release ----"
Rscript -e 'devtools::check_win_oldrelease(quiet = TRUE, manual = FALSE)'

echo "# Release ----"
Rscript -e 'devtools::check_win_release(quiet = TRUE, manual = FALSE)'

echo "# Devel ----"
Rscript -e 'devtools::check_win_devel(quiet = TRUE, manual = FALSE)'
