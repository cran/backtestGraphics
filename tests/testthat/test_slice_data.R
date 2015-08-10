context("Test for the function 'slice_data'")

load("test_slice_data.RData")

test_that("slice_data function", {
  
  result.1 <- backtestGraphics:::slice_data(x, input.1, NULL)
  result.2 <- backtestGraphics:::slice_data(x, input.2, NULL)
  result.3 <- backtestGraphics:::slice_data(x, input.3, NULL)
  result.4 <- backtestGraphics:::slice_data(x, input.4, NULL)
  result.5 <- backtestGraphics:::slice_data(x, input.5, NULL)
  result.6 <- backtestGraphics:::slice_data(x, input.6, NULL)
  result.7 <- backtestGraphics:::slice_data(x, input.7, NULL)
  
  expect_equal(result.1, truth.1, label = "Failed the test for summarizing data across all strategies, portfolios and instruments.")
  expect_equal(result.2, truth.2, label = "Failed the test for selecting a specific sector.")
  expect_equal(result.3, truth.3, label = "Failed the test for selecting a specific instrument.")
  expect_equal(result.4, truth.4, label = "Failed the test for selecting a specific strategy.")
  expect_equal(result.5, truth.5, label = "Failed the test for selecting a specific substrategy.")
  expect_equal(result.6, truth.6, label = "Failed the test for selecting a specific portfolio.")
  expect_equal(result.7, truth.7, label = "Failed the test for selecing a single instrument in a specific portfolio and under a specific strategy.")
  
})