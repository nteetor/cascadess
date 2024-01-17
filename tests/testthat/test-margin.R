test_that("adds html class", {
  div() %>%
    margin_all(3) %>%
    expect_shiny_tag() %>%
    expect_html_class("m-3")
})

test_that("adds responsive html class", {
  div(
    .style %>%
      margin_all(md = 2)
  ) %>%
    expect_shiny_tag() %>%
    expect_html_class("m-md-2")
})
