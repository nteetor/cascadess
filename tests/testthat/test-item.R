test_that("adds html class", {
  tag <- div() %>%
    item_order(2)

  expect_shiny_tag(tag)
  expect_html_class(tag, "order-2")
})

test_that("adds responsive html class", {
  tag <- div() %>%
    item_order(md = 2)

  expect_html_class(tag, "order-md-2")
})
