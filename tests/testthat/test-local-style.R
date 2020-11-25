context("local_style()")

test_that("can be empty", {
  f <- function() {
    local_style()
    div(.style %>% background("red"))
  }

  f() %>%
    expect_html_class("cas-background-red")
})

test_that("rename prefix", {
  f <- function() {
    local_style(background = "bg")
    div(.style %>% background("indigo"))
  }

  f() %>%
    expect_html_class("bg-indigo")
})

test_that("modifies passed .style", {
  f <- function(...) {
    local_style(margin = "margin")

    div(
      "hello, world!",
      ...
    )
  }

  f(.style %>% margin(5)) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("margin-all-5")
})
