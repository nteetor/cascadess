test_that("adds html class", {
  el <- width(div(), 25)

  expect_shiny_tag(el)
  expect_html_class(el, "w-25")

  el2 <- div(.style %>% width(100))

  expect_shiny_tag(el2)
  expect_html_class(el2, "w-100")
})
