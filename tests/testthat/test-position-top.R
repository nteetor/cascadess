test_that("adds classes", {
  x <- div(.style %>% position_top(50))
  y <- div(.style %>% position_top(0))
  z <- div(.style %>% position_top(100))


  expect_s3_class(x, "shiny.tag")

  expect_html_class(x, "top-50")
  expect_html_class(y, "top-0")
  expect_html_class(z, "top-100")
})
