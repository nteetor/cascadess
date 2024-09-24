test_that("adds classes", {
  x <- div(.style %>% text_transform("uppercase"))
  y <- div(.style %>% text_transform("lowercase"))
  z <- div(.style %>% text_transform("capitalize"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "text-uppercase")
  expect_html_class(y, "text-lowercase")
  expect_html_class(z, "text-capitalize")
})
