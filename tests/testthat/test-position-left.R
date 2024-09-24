test_that("adds classes", {
  x <- div(.style %>% position_left(50))
  y <- div(.style %>% position_left(0))
  z <- div(.style %>% position_left(100))


  expect_s3_class(x, "shiny.tag")

  expect_html_class(x, "left-50")
  expect_html_class(y, "left-0")
  expect_html_class(z, "left-100")
})
