test_that("adds html qclass", {
  tag1 <- div(
    .style %>%
      display("none")
  )

  expect_s3_class(tag1, "shiny.tag")
  expect_html_class(tag1, "d-none")

  tag2 <- div(
    .style %>%
      display("flex")
  )

  expect_s3_class(tag2, "shiny.tag")
  expect_html_class(tag2, "d-flex")
})

test_that(".style remains spliced", {
  pronoun <- .style %>%
    display("block")

  expect_is_spliced(pronoun)
})
