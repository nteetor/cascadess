test_that("named_match()", {
  expect_null(named_match("one", NULL))
})

test_that("assert_values()", {
  expect_error(assert_values(c(), c(one = 1, two = 2)))
})

test_that("pronoun_box_add_class()", {
  expect_error(
    pronoun_box_add_class(splice(2), "two-class"),
    "unexpected pronoun box contents"
  )
})
