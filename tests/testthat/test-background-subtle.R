test_that("adds classes", {
  x <- div(.style %>% background_subtle(theme_dark()))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "bg-dark-subtle")
})
