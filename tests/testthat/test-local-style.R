context("local_style()")

test_that("can be empty", {
  f <- function() {
    local_style()
    div(.style %>% background("red"))
  }

  f() %>%
    expect_html_class("cas-background-red")
})

test_that("rename prefix", {
  f <- function() {
    local_style(background = "bg")
    div(.style %>% background("indigo"))
  }

  f() %>%
    expect_html_class("bg-indigo")
})

test_that("does not pollute env", {
  f <- function() {
    local_style(display = "d")
    div()
  }

  f()

  expect_error(
    get(".__cascadess__style_pronoun__.", inherits = FALSE),
    "not found$"
  )
})
