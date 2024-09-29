test_that("adds classes", {
  x <- width_relative(div(), 25)

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "w-25")
})
