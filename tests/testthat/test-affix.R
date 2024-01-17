test_that("adds html classes", {
  el <- div(
    .style %>%
      flex_align("end")
  )

  expect_s3_class(el, "shiny.tag")
  expect_html_class(el, "align-items-end")
})

test_that("valid values", {
  expect_error(flex_align(div(), "bottom"), "invalid value")
})
