context("width()")

test_that("adds class", {
  div() %>% width(25) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-w-25")

  div(.style %>% width(100)) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-w-100")
})
