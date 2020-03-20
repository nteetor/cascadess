context("text()")

test_that("adds class", {
  div() %>%
    text("red") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-text-color-red")

  div(.style %>% text("blue", align = "right")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-text-align-right")
})

test_that("argument wrap", {
  div() %>%
    text(wrap = TRUE) %>%
    expect_html_class("cas-text-wrap")
})
