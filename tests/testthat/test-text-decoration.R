test_that("adds classes", {
  x <- div(.style %>% text_decoration("underline"))
  y <- div(.style %>% text_decoration("strike"))
  z <- div(.style %>% text_decoration("none"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "text-underline")
  expect_html_class(y, "text-line-through")
  expect_html_class(z, "text-none")
})
