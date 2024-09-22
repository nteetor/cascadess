# cascadess

[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
![r-cmd-check](https://github.com/nteetor/cascadess/workflows/r-cmd-check/badge.svg)
[![codecov](https://codecov.io/github/nteetor/cascadess/branch/main/graph/badge.svg?token=iqPqX81732)](https://codecov.io/github/nteetor/cascadess)
[![CRAN status](https://www.r-pkg.org/badges/version/cascadess)](https://CRAN.R-project.org/package=cascadess)

A style pronoun and utilities for {[htmltools](https://github.com/rstudio/htmltools)} tags, {[bslib](https://github.com/rstudio/bslib)}, and {[shiny](https://github.com/rstudio/shiny)}.

## What can I use cascadess for?

* Change background colors
* Vertically stack action buttons
* Optimize layouts for smaller screens
* Affix an element to the top of the webpage
* Increase or decrease space between html elements
* Force text to upper, lower, or title case

Importantly, cascadess's styles can be used with any shiny related package. The
styles applied by cascadess are based upon the Bootstrap CSS framework. So,
rather than conflict, the applied styles are designed to blend with those
applied by bslib.

## Why a pronoun?

Cascadess defines a style pronoun, `.style`, usable inside `htmltools::tags`
HTML builder functions. With `.style` you can specify styling directly within a
function call to help a reader understand how the HTML tag element will be
styled. Without the `.style` pronoun, styling is applied after a function call.

```R
input_button(
  .style |>
    margin_all(2) |>
    background_color("primary"),
  id = "go",
  label = "Go!"
)

# vs

input_button(
  id = "go",
  label = "Go!"
) |>
  margin_all(2) |>
  background_color("primary")
```

## Usage

To see the CSS styles, either include a call to `cascadess_dependencies()` somewhere in the UI of the application or use the bslib package.

``` R
div(
  cascadess_dependencies(),
  div(
    .style |>
      margin_all(3) |>
      shadow("lg"),
    "For a standalone report or simple shiny app"
  )
)
```

```R
page(
  card(
    .style |>
      margin_all(3) |>
      border_color(theme_info()) |>
      font_color(theme_info()),
    "When using bslib, the necessary CSS styles are already included"
  )
)
```

## Installation

Install the package from CRAN with,

``` R
install.packages("cascadess")
```
