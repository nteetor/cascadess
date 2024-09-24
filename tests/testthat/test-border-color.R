test_that("adds classes", {
  x <- div(.style %>% border_color(theme_primary()))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "border-primary")
})
