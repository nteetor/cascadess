context("with_style()")

test_that("can be empty", {
  el <- with_style({
    div(.style %>% display("inline-block"))
  })

  el %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-display-inline-block")
})

test_that("basic usage", {
  d <- with_style(float = "fl", {
    div(.style %>% float("left"))

    with_style(float = "fruit", div() %>% float("right"))

    div(.style %>% float("left"))
  })

  d %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("fl-left")
})

test_that("nested usage", {
  with_style(float = "f1", {
    expect_html_class(div(.style %>% float("left")), "f1-left")

    with_style(float = "fruit", {
      expect_html_class(div(.style %>% float("right")), "fruit-right")
    })

    expect_html_class(div(.style %>% float("left")), "f1-left")
  })

  with_style(float = "dote", {
    d <- div(.style %>% float("right"))

    with_style(float = "float", {
      f <- with_style(float = "goat", div() %>% float("right"))
    })

    g <- div(.style %>% float("left"))

    d %>% expect_html_class("dote-right")
    f %>% expect_html_class("goat-right")
    g %>% expect_html_class("dote-left")
  })
})
