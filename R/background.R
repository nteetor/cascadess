theme_colors <- c(
  blue = "blue",
  indigo = "indigo",
  purple = "purple",
  red = "red",
  orange = "orange",
  yellow = "yellow",
  green = "green",
  teal = "teal",
  cyan = "cyan"
)

background_color_ <- c(
  theme_colors,
  body = "body",
  white = "white",
  transparent = "transparent"
)

background_color <- function(color) {
  pick(color, from = background_color_)
}

#' Backgrounds
#'
#' The `background()` function adjusts the background color of a tag element.
#'
#' @param x A tag element or [.style] pronoun.
#'
#' @param color One of `r rd_chr_lst(names(background_color_))`.
#'
#' @includeRmd man/roxygen/background.Rmd
#'
#' @export
#' @examples
#'
#' library(htmltools)
#'
#' div(
#'   .style %>%
#'     background("white") %>%
#'     border("blue") %>%
#'     text("white"),
#'   "Nunc porta vulputate tellus.",
#'   "Suspendisse potenti."
#' )
#'
background <- function(x, color) {
  assert_subject(x)

  cls <- prefix(
    "background",
    background_color(color)
  )

  add_class(x, cls)
}
