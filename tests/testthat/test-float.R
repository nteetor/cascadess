test_that("adds html class", {
  tag1 <- div() %>%
    float("left")

  expect_s3_class(tag1, "shiny.tag")
  expect_html_class(tag1, "float-left")

  tag2 <- div(.style %>% float("left"))

  expect_s3_class(tag2, "shiny.tag")
  expect_html_class(tag2, "float-left")

  tag3 <- div(.style %>% float("none"))

  expect_s3_class(tag3, "shiny.tag")
  expect_html_class(tag3, "float-none")
})
