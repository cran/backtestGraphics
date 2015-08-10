context("Test for function 'interactive_plot'")

load("test_interactive_plot.RData")

test_that("interactive_plot function", {
  
  result.1 <- backtestGraphics:::interactive_plot(x, "nmv")
  result.2 <- backtestGraphics:::interactive_plot(x, "gmv")
  result.3 <- backtestGraphics:::interactive_plot(x, "pnl")
  result.4 <- backtestGraphics:::interactive_plot(x, "cumpnl")
  result.5 <- backtestGraphics:::interactive_plot(x, "contract")
  
  expect_equal(result.1, truth.1, label = "Failed the test for the NMV bar plot")
  expect_equal(result.2, truth.2, label = "Failed the test for the GMV bar plot")
  expect_equal(result.3, truth.3, label = "Failed the test for the P&L bar plot")
  expect_equal(result.4, truth.4, label = "Failed the test for the Cumulative P&L bar plot")
  expect_equal(result.5, truth.5, label = "Failed the test for the contract bar plot")
  
})