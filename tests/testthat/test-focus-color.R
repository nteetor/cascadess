test_that("adds classes", {
  x <- div() %>% focus_color(theme_primary())

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "focus-ring")
  expect_html_class(x, "focus-ring-primary")
})
