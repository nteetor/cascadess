context("overflow()")

test_that("adds class", {
  div() %>%
    overflow("auto") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-overflow-auto")

  div(.style %>% overflow("hidden")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-overflow-hidden")
})

test_that("argument scroll shortcuts", {
  div() %>% overflow(FALSE) %>%
    expect_html_class("cas-overflow-hidden")

  div() %>% overflow(TRUE) %>%
    expect_html_class("cas-overflow-auto")
})
