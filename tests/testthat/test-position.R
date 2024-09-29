test_that("adds classes", {
  x <- div(.style %>% position("relative"))
  y <- div(.style %>% position("fixed"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "position-relative")
  expect_html_class(y, "position-fixed")
})
