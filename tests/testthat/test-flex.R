test_that("adds html class", {
  tag <- div(
    .style %>%
      flex_display()
  )

  expect_s3_class(tag, "shiny.tag")
  expect_html_class(tag, "d-flex")
})

test_that("adds classes", {
  tag <- div(
    .style %>%
      flex_display() %>%
      flex_direction("row")
  )

  expect_s3_class(tag, "shiny.tag")
  expect_html_class(tag, "flex-row")
})

test_that("adds responsive classes", {
  tag <- div(
    .style %>%
      flex_direction(xs = "column", md = "row")
  )

  expect_html_class(tag, "flex-md-row")
  expect_html_class(tag, "flex-column")
})
