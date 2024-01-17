test_that("adds class", {
  div() %>%
    font_weight("bolder") %>%
    expect_shiny_tag() %>%
    expect_html_class("fw-bolder")

  div(
    .style %>%
      font_weight("light")
  ) %>%
    expect_shiny_tag() %>%
    expect_html_class("fw-light")
})
