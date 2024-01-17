test_that("adds html class", {
  el <- div(
    .style %>%
      border_color(theme_primary())
  )

  expect_shiny_tag(el)
  expect_html_class(el, "border-primary")
})

test_that(".style remains splice box", {
  .style %>%
    border_color(theme_primary()) %>%
    expect_is_splice_box()
})
