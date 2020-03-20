context("font()")

test_that("adds class", {
  div() %>%
    font("bolder") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-font-weight-bolder")

  div(.style %>% font("light")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-font-weight-light")
})
