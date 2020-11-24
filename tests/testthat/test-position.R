context("position()")

test_that("adds class", {
  div(.style %>% position("fixed")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-position-fixed")
})
