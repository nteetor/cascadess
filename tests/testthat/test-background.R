context("background()")

library(htmltools)

test_that("add classes", {
  div(.style %>% background("red")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-bg-red")
})

test_that("spliced return", {
  .style %>% background("red") %>%
    expect_s3_class("rlang_box_splice")
})
