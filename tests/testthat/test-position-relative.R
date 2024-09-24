test_that("adds classes", {
  x <- div(.style %>% position_relative())

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "position-relative")
})
