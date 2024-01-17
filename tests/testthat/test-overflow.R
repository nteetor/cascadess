test_that("adds html class", {
  div() %>%
    overflow("auto") %>%
    expect_shiny_tag() %>%
    expect_html_class("overflow-auto")

  div(.style %>% overflow("hidden")) %>%
    expect_shiny_tag() %>%
    expect_html_class("overflow-hidden")
})
