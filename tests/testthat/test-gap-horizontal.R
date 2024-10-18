test_that("adds classes", {
  x <- div() %>% gap_horizontal(5)

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "column-gap-5")
})
