# cascadess

[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
![r-cmd-check](https://github.com/nteetor/cascadess/workflows/r-cmd-check/badge.svg)
[![codecov](https://codecov.io/gh/nteetor/cascadess/branch/main/graph/badge.svg)](https://codecov.io/gh/nteetor/cascadess)
[![CRAN status](https://www.r-pkg.org/badges/version/cascadess)](https://CRAN.R-project.org/package=cascadess)

A style pronoun and utilities for {[htmltools](https://github.com/rstudio/htmltools)} tags.

## What can I use cascadess for?

* Change background color
* Vertically stack action buttons
* Optimize control panel layout for smaller screens
* Affix an element to the top of the webpage
* Increase or decrease space between html elements
* Force text to upper, lower, or title case

Most importantly, cascadess's styles can be used with _any_ shiny related
package and are designed to not clash with or overwrite existing CSS styles.

## Why a pronoun?

Cascadess defines a style pronoun, `.style`, usable inside `htmltools::tags`
HTML builder functions. With `.style` you can specify styling directly within
the builder function call, which helps the reader immediately understand how the
HTML tag element is styled. Without the `.style` pronoun, styling is applied
after the function call, e.g `div() %>% margin() %>% background()`.

``` R
library(htmltools)
library(cascadess)

div(
  .style %>%
    margin(2) %>%
    border("indigo") %>%
    shadow("medium"),
  p("Fusce sagittis, libero non molestie mollis, magna",
    "orci ultrices dolor, at vulputate neque nulla lacinia eros.")
)
```

## Usage

The `cascadess()` function must be included in a UI so the necessary CSS files
are found.

``` R
ui <- list(
  cascadess(),
  h4(
    .style %>%
      font(case = "upper") %>%
      border(bottom = "red"),
    "Etiam vel tortor sodales tellus ultricies commodo."
  )
)
```

## Installation

The stable version may be installed from CRAN.

``` R
install.packages("cascadess")
```

The development version may be installed from the main branch.

``` R
## install.packages("remotes")
remotes::install_github("nteetor/cascadess")
```
