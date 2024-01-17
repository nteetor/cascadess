test_that("adds html class", {
  div() %>%
    text_color("primary") %>%
    expect_shiny_tag() %>%
    expect_html_class("text-primary")

  div(
    .style %>%
      text_color("primary")
  ) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("text-primary")
})
