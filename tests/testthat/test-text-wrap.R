test_that("adds classes", {
  x <- div(.style %>% text_wrap(TRUE))
  y <- div(.style %>% text_wrap(FALSE))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "text-wrap")
  expect_html_class(y, "text-nowrap")
})
