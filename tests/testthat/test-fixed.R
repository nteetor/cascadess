context("fixed()")

test_that("adds classes", {
  div() %>%
    fixed("top") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-fixed-top")

  div(.style %>% fixed("top")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-fixed-top")
})
