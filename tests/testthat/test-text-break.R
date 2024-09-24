test_that("adds classes", {
  x <- div(.style %>% text_break())

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "text-break")
})
