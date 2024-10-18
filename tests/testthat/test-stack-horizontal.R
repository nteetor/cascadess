test_that("adds classes", {
  x <- div() %>% stack_horizontal()

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "hstack")
})
