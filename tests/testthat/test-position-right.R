test_that("adds classes", {
  x <- div(.style %>% position_right(50))
  y <- div(.style %>% position_right(0))
  z <- div(.style %>% position_right(100))


  expect_s3_class(x, "shiny.tag")

  expect_html_class(x, "right-50")
  expect_html_class(y, "right-0")
  expect_html_class(z, "right-100")
})
