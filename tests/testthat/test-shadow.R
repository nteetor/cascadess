test_that("adds htmls class", {
  div() %>% shadow("small") %>%
    expect_shiny_tag() %>%
    expect_html_class("shadow-sm")

  div(.style %>% shadow("lg")) %>%
    expect_shiny_tag() %>%
    expect_html_class("shadow-lg")
})
