# storm runoff function

#' Simple Method Runoff Function
#' 
#' This function uses equations from the "Simple Method" to predict the volume of stormwater runoff in ft^3 given inputs of impervious fraction and watershed area
#'
#' @param imperv_frac a number indicating the fraction of the watershed that is considered impervious
#' @param wtrshed_area a number indicating the watershed area in acres
#'
#' @return
#' @export
#'
#' @examples
predict_runoff <- function(imperv_frac, wtrshed_area) {
  
  runoff <- 0.05 + 0.9 * imperv_frac
  
  volume <- 3630 * runoff * wtrshed_area
  
  return(volume)
}
