test_that("adds classes", {
  x <- div(.style %>% flex_wrap(TRUE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-wrap")
})

test_that("adds classes", {
  x <- div(.style %>% flex_wrap(md = TRUE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "flex-md-wrap")
})
