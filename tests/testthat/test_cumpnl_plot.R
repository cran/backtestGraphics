context("Test for the function 'cumpnl_plot'")

load("test_cumpnl_plot.RData")

test_that("cumpnl_plot function", {
  
  result.1 <- backtestGraphics:::cumpnl_plot(x)
  
  expect_equal(result.1, truth.1, label = "Failed the test for the Cumulative P&L line plot")
  
})