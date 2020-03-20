context("with_style()")

test_that("can be empty", {
  el <- with_style({
    div(.style %>% display("inline-block"))
  })

  el %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-display-inline-block")
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
