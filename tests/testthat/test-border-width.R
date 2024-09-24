test_that("adds classes", {
  x <- div(.style %>% border_width(2))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "border-2")
})
