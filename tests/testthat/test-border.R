context("border()")

test_that("add classes", {
  div(.style %>% border("red")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-border-red")
})

test_that("spliced return", {
  .style %>% border("red") %>%
    expect_s3_class("rlang_box_splice")
})

test_that("argument `sides` shorthand", {
  div(.style %>% border("blue", sides = TRUE)) %>%
    expect_html_class("cas-border-all")

  div(.style %>% border("green", sides = FALSE)) %>%
    expect_html_class("cas-border-none")
})

test_that("`width` argument", {
  div(.style %>% border("blue", width = 3)) %>%
    expect_html_class("cas-border-3")
})
