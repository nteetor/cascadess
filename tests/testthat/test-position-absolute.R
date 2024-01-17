test_that("adds html class", {
  div(.style %>% position_absolute()) %>%
    expect_shiny_tag() %>%
    expect_html_class("position-absolute")
})
