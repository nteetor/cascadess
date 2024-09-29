test_that("adds html class", {
  x <- div(.style %>% overflow_all("auto"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "overflow-auto")

  y <- div(.style %>% overflow_horizontal("hidden"))

  expect_s3_class(y, "shiny.tag")
  expect_html_class(y, "overflow-x-hidden")
})
