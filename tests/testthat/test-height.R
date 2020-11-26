context("height()")

test_that("adds class", {
  div() %>%
    height(50) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-h-50")

  div(.style %>% height(50)) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-h-50")
})
