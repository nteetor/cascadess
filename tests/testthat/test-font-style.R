test_that("adds classes", {
  x <- div(.style %>% font_style("italic"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "fst-italic")
})
