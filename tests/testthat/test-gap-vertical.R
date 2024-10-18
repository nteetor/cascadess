test_that("adds classes", {
  x <- div() %>% gap_vertical(4)

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "row-gap-4")
})
