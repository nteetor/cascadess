test_that("adds classes", {
  x <- div(.style %>% item_align("end"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "align-self-end")
})

test_that("adds responsive classes", {
  x <- div(.style %>% item_align(lg = "end"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "align-self-lg-end")
})
