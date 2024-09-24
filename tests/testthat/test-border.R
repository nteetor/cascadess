test_that("adds html class", {
  a <- div(.style %>% border_all())
  t <- div(.style %>% border_top())
  r <- div(.style %>% border_right())
  b <- div(.style %>% border_bottom())
  l <- div(.style %>% border_left())

  expect_s3_class(a, "shiny.tag")
  expect_s3_class(t, "shiny.tag")
  expect_s3_class(r, "shiny.tag")
  expect_s3_class(b, "shiny.tag")
  expect_s3_class(l, "shiny.tag")

  expect_html_class(a, "border")
  expect_html_class(t, "border-top")
  expect_html_class(r, "border-right")
  expect_html_class(b, "border-bottom")
  expect_html_class(l, "border-left")
})
