#' Create opt group list for selectizeInput for instruments
#' 
#' This function accepts the sector and id columns
#' of the data set and create a list of groups as required
#' by the selectizeInput optgroup functionality
#' 
#' 
#' @param sector sector column
#' @param id id column
#' 
#' @return a list of groups for sector/ id 
#'         as required by the selectizeInput optgroup functionality
create_instrument_optGroups <- function(sector, id) {
  
  ## list variable to build optGroup list
  optGroupList <- list()
  
  ## convert to alphabetical order
  sector <- sort(sector)
  
  for(this_sector in unique(sector))
  {
    sector_data <- dplyr::filter(backtestGraphics::commodity, sector == this_sector)
    options <- c(this_sector, unique(sector_data$id))
    optGroupList[[this_sector]] <- options
  }
  
  optGroupList
}
