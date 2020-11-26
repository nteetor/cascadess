context("visible()")

test_that("adds classes", {
  div() %>%
    visible(FALSE) %>%
    expect_html_class("invisible")

  div() %>%
    visible(TRUE) %>%
    expect_html_class("visible")
})
