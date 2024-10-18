test_that("adds classes", {
  x <- div() %>% stack_vertical()

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "vstack")
})
