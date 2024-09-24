test_that("adds classes", {
  x <- div(.style %>% position_static())

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "position-static")
})
