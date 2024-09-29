test_that("adds classes", {
  x <- div(.style %>% text_weight("bold"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "fw-bold")
})
