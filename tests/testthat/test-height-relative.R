test_that("adds classes", {
  x <- div(.style %>% height_relative(50))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "h-50")

  y <- div(.style %>% height_relative(25))

  expect_s3_class(y, "shiny.tag")
  expect_html_class(y, "h-25")
})
