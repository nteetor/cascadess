test_that("adds html class", {
  div() %>%
    visible(FALSE) %>%
    expect_html_class("invisible")

  div() %>%
    visible(TRUE) %>%
    expect_html_class("visible")
})
