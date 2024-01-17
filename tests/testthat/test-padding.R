test_that("adds html class", {
  div() %>%
    padding_all(3) %>%
    expect_shiny_tag() %>%
    expect_html_class("p-3")
})
