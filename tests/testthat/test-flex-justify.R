test_that("adds classes", {
  tg <- div(.style %>% flex_justify("start"))

  expect_s3_class(tg, "shiny.tag")
  expect_html_class(tg, "justify-content-start")
})

test_that("adds responsive classes", {
  tg <- div(.style %>% flex_justify(sm = "start"))

  expect_s3_class(tg, "shiny.tag")
  expect_html_class(tg, "justify-content-sm-start")
})
