test_that("adds classes", {
  x <- div() %>% gap_all(2)
  y <- div() %>% gap_all(sm = 1, lg = 4)

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "gap-2")

  expect_s3_class(y, "shiny.tag")
  expect_html_class(y, "gap-sm-1")
  expect_html_class(y, "gap-lg-4")
})
