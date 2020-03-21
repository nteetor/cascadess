# cascadess

![r-cmd-check](https://github.com/nteetor/cascadess/workflows/r-cmd-check/badge.svg)
[![codecov](https://codecov.io/gh/nteetor/cascadess/branch/master/graph/badge.svg)](https://codecov.io/gh/nteetor/cascadess)

A standalone package for [yonder](https://github.com/nteetor/yonder)'s design
functions.

Apply Bootstrap 5 utility classes and their styles to any
[htmltools](https://github.com/rstudio/htmltools) tag element.

``` R
library(htmltools)
library(cascadess)

div(
  .style %>%
    margin(2) %>%
    background("light") %>%
    border("dark") %>%
    shadow("medium"),
  p("Fusce sagittis, libero non molestie mollis, magna",
    "orci ultrices dolor, at vulputate neque nulla lacinia eros.")
)
```
