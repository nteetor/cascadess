context("float()")

test_that("adds class", {
  div() %>%
    float("left") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-float-left")

  div(.style %>% float("left")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-float-left")

  div(.style %>% float("none")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-float-none")
})
