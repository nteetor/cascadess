test_that("adds classes", {
  x <- div(.style %>% item_fill(TRUE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-fill")
})

test_that("adds responsive classes", {
  x <- div(.style %>% item_fill(md = TRUE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-md-fill")
})
