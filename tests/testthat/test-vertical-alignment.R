test_that("adds classes", {
  x <- div(.style %>% vertical_alignment("bottom"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "align-bottom")
})
