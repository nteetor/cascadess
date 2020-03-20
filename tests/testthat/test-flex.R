context("flex()")

test_that("adds classes", {
  div() %>%
    flex() %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-flex-row")

  div(.style %>% flex()) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-flex-row")
})
