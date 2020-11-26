context("font()")

test_that("adds class", {
  div() %>%
    font(weight = "bolder") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-font-bolder")

  div(.style %>% font(weight = "light")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-font-light")
})
