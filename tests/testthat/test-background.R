test_that("adds html class", {
  el <- div(
    .style %>%
      background_color(theme_primary())
  )

  expect_shiny_tag(el)
  expect_html_class(el, "bg-primary")
})

test_that(".style remains spliced", {
  .style %>%
    background_color(theme_primary()) %>%
    expect_is_splice_box()
})
