test_that("adds classes", {
  x <- div(.style %>% padding_horizontal(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "px-3")
})
