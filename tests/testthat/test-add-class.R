context("add_class()")

test_that("add to tag element", {
  el <- add_class(div(), "test-class")

  el %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("test-class")
})

test_that("add to style pronoun", {
  s <- add_class(.style, "test-class")

  expect_named(rlang::unbox(s), "class")
  expect_equal(rlang::unbox(s)$class, "test-class")
})

test_that("add to spliced pronoun", {
  s1 <- add_class(.style, "test-class-1")
  s2 <- add_class(s1, "test-class-2")

  expect_named(rlang::unbox(s2), "class")
  expect_equal(
    rlang::unbox(s2)$class,
    "test-class-1 test-class-2"
  )
})
