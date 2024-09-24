test_that("adds classes", {
  x <- div(.style %>% item_grow(TRUE))
  y <- div(.style %>% item_grow(FALSE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-grow-1")
  expect_html_class(y, "flex-grow-0")
})

test_that("adds responsive classes", {
  x <- div(.style %>% item_grow(sm = TRUE))
  y <- div(.style %>% item_grow(lg = FALSE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-sm-grow-1")
  expect_html_class(y, "flex-lg-grow-0")
})
