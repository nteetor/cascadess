test_that("adds classes", {
  x <- div(.style %>% flex_content("start"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "align-content-start")
})

test_that("adds responsive classes", {
  x <- div(.style %>% flex_content("between"))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "align-content-between")
})
