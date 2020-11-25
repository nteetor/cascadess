context("position()")

test_that("adds class", {
  div(.style %>% position("fixed")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-position-fixed")
})

test_that("`by` argument", {
  div(.style %>% position("absolute", by = "center")) %>%
    expect_html_class("cas-position-by-center")
})
