test_that("add class to tag element", {
  el <- add_class(div(), "test-class")

  expect_s3_class(el, "shiny.tag")
  expect_html_class(el, "test-class")
})

test_that("add class to style pronoun", {
  pronoun <- add_class(.style, "test-class")

  expect_named(unbox(pronoun), "class")
  expect_equal(unbox(pronoun)$class, "test-class")
})

test_that("add class to spliced pronoun", {
  pronoun <- add_class(.style, "test-class-1")
  spliced <- add_class(pronoun, "test-class-2")

  expect_named(unbox(spliced), "class")
  expect_equal(unbox(spliced)$class, "test-class-1 test-class-2")
})
