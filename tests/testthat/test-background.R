test_that("adds classes", {
  x <- div(.style %>% background_color(theme_primary()))

  expect_shiny_tag(x)
  expect_html_class(x, "bg-primary")
})

test_that(".style remains spliced", {
  .style %>%
    background_color(theme_primary()) %>%
    expect_is_splice_box()
})
