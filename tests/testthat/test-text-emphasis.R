test_that("adds classes", {
  x <- div(.style %>% text_emphasis(theme_warning()))

  expect_s3_class(x, "shiny.tag")
  expect_html_class(x, "text-warning-emphasis")
})

test_that("fails on unexpected subject", {
  expect_error(text_emphasis(3030, theme_danger()))
})
