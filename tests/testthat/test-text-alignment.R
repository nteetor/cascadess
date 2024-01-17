test_that("adds html class", {
  div() %>%
    text_alignment("left") %>%
    expect_shiny_tag() %>%
    expect_html_class("text-start")
})
