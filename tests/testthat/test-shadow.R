context("shadow()")

test_that("adds class", {
  div() %>% shadow("small") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-shadow-sm")

  div(.style %>% shadow("lg")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-shadow-lg")
})
