test_that("adds classes", {
  x <- div(.style %>% text_selection("all"))
  y <- div(.style %>% text_selection("auto"))
  z <- div(.style %>% text_selection("none"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "user-select-all")
  expect_html_class(y, "user-select-auto")
  expect_html_class(z, "user-select-none")
})
