context("padding()")

test_that("adds class", {
  div() %>%
    padding(3) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-padding-all-3")

  div(.style %>% padding(bottom = 5)) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-padding-bottom-5")
})
