context("local_style()")

test_that("can be empty", {
  f <- function() {
    local_style()
    htmltools::div(.style %>% background("red"))
  }

  expect_true(grepl("background-red", as.character(f())))
})
