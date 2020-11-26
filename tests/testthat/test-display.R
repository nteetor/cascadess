context("display()")

test_that("adds class", {
  div() %>% display("none") %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-d-none")

  div(.style %>% display("flex")) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-d-flex")
})

test_that("spliced return", {
  .style %>%
    display("block") %>%
    expect_s3_class("rlang_box_splice")
})
