#' Create opt group list for selectizeInput for strategies
#' 
#' This function accepts the strategy and substrategy columns
#' of the data set and create a list of groups as required
#' by the selectizeInput optgroup functionality
#' 
#' We assume that substrategies pertaining to a given strategy 
#' uses the name of the strategy followed by a period and then
#' the substrategy number. For example, substrategy 2 for strategy
#' 1 must be named "Strategy 1.2". 
#' 
#' @param strategy strategy column
#' @param substrategy substrategy column
#' 
#' @return a list of groups for strategy/ substrategy 
#'         as required by the selectizeInput optgroup functionality
create_strategy_optGroups <- function(strategy, substrategy) {
  
  ## list variable to build optGroup list
  optGroupList <- list()
  
  ## convert to alphabetical order
  strategy <- sort(strategy)
  
  for(this_strategy in unique(strategy))
  {
    options <- c(this_strategy, unique(substrategy[startsWith(substrategy, this_strategy)]))
    optGroupList[[this_strategy]] <- options
  }
  
  optGroupList
}
