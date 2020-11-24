context("with_style()")

test_that("can be empty", {
  el <- with_style({
    div(.style %>% display("inline-block"))
  })

  el %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-display-inline-block")
})

test_that("pronoun is properly installed", {
  expect_type(
    with_style(get(".__cascadess__style_pronoun__.", inherits = FALSE)),
    "environment"
  )

  expect_type(
    with_style(style_get_pronoun()),
    "environment"
  )
})

test_that("does not pollute env", {
  with_style({
    div(.style %>% text("red"))
  })

  expect_error(
    get(".__cascadess__style_pronoun__.", inherits = FALSE),
    "not found$"
  )
})

test_that("basic usage", {
  d <- with_style(float = "fl", {
    div(.style %>% float("left"))
  })

  d %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("fl-left")
})
