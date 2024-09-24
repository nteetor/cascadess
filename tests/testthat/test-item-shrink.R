test_that("adds classes", {
  x <- div(.style %>% item_shrink(TRUE))
  y <- div(.style %>% item_shrink(FALSE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-shrink-1")
  expect_html_class(y, "flex-shrink-0")
})

test_that("adds responsive classes", {
  x <- div(.style %>% item_shrink(sm = TRUE))
  y <- div(.style %>% item_shrink(lg = FALSE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-sm-shrink-1")
  expect_html_class(y, "flex-lg-shrink-0")
})
