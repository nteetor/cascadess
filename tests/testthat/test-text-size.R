test_that("adds classes", {
  x <- div(.style %>% text_size(3))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "fs-3")
})
