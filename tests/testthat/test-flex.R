context("flex()")

test_that("no classes by default", {
  flex(div()) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("")
})

test_that("adds classes", {
  flex(div(), direction = "row") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-flex-row")

  div(.style %>% flex(wrap = TRUE)) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-flex-wrap")
})

test_that("arguments are responsive", {
  div() %>%
    flex(
      direction = c(default = "column", md = "row")
    ) %>%
    expect_html_class("cas-flex-md-row") %>%
    expect_html_class("cas-flex-column")
})
