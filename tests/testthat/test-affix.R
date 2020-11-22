context("align()")

test_that("added classes", {
  div(.style %>% align("bottom")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-align-bottom")
})

test_that("valid values", {
  expect_error(
    .style %>% align("wrong"),
    "^invalid value [^ ]+wrong[^ ]+$"
  )
})
