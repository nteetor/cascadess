test_that("adds classes", {
  x <- div(.style %>% position_bottom(50))
  y <- div(.style %>% position_bottom(0))
  z <- div(.style %>% position_bottom(100))


  expect_s3_class(x, "shiny.tag")

  expect_html_class(x, "bottom-50")
  expect_html_class(y, "bottom-0")
  expect_html_class(z, "bottom-100")
})
