context("Test for function 'sum_data'")

load("test_sum_data.RData")

test_that("sum_data function", {
  result.1 <- backtestGraphics:::sum_data(x)
  result.2 <- backtestGraphics:::sum_data(x, sector.selected = "agriculture")
  
  expect_equal(result.1, truth.1, label = "Failed the test for summarizing the whole portfolio data")
  expect_equal(result.2, truth.2, label = "Failed the test for summarizing the sector data")
})
