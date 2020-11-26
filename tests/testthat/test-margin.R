context("margin()")

test_that("adds class", {
  div() %>%
    margin(3) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-m-3")

  div(.style %>% margin(left = 2)) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-m-l-2")
})
