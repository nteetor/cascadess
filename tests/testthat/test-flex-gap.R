test_that("adds html class", {
  div() %>%
    flex_gap(2) %>%
    expect_html_class("gap-2")
})
