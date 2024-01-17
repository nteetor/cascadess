test_that("adds html class", {
  tag1 <- div() %>%
    height(50)
  expect_s3_class(tag1, "shiny.tag")
  expect_html_class(tag1, "h-50")

  tag2 <- div(.style %>% height(50))
  expect_s3_class(tag2, "shiny.tag")
  expect_html_class(tag2, "h-50")
})
