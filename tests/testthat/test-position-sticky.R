test_that("adds classes", {
  x <- div() %>% position_sticky(lg = "top")

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "sticky-lg-top")
})
