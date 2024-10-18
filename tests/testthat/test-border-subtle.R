test_that("adds classes", {
  x <- div() %>% border_subtle(theme_warning())

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "border-warning-subtle")
})
