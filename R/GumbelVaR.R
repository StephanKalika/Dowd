#' @title Gumbel VaR
#'
#' @description Estimates the EV VaR of a portfolio assuming extreme losses are Gumbel distributed, for specified confidence level and holding period.
#'
#' @param mu Location parameter for daily L/P
#' @param sigma Assumed scale parameter for daily L/P
#' @param n Size from which the maxima are drawn
#' @param cl VaR confidence level
#' @param hp VaR holding period
#' @return Estimated VaR
#' 
#' @references Dowd, K. Measuring Market Risk, Wiley, 2007.
#' 
#' 
#' @author Dinesh Acharya
#' @examples
#' 
#'    # Gumbel VaR
#'    GumbelVaR(0, 1.2, 100, c(.9,.88, .85, .8), 280)
#'
#' @export
GumbelVaR<- function(mu, sigma, n, cl, hp){
  
  # Check that inputs have correct dimensions
  if (!length(mu) == 1) {
    stop("Mean must be a scalar")
  }
  if (!length(sigma) == 1) {
    stop("Standard Deviation must be a scalar")
  }
  if (!is.vector(cl)) {
    stop("cl must be a vector")
  }
  if (!length(hp) == 1) {
    stop("hp must be a scalar")
  }
  
  # To check that cl is read as a row vector as required
  cl <- t(as.matrix(cl))
  
  # Check that inputs obey sign and value restrictions
  if (sigma < 0) {
    stop("Standard deviation must be non-negative")
  }
  if (max(cl) >= 1) {
    stop("Confidence levels must be less than 1")
  }
  if (min(cl) <= 0) {
    stop("Confidence levels must be less than 1")
  }
  if (min(hp) <= 0) {
    stop("Holding period must be greated than 0")
  }
  
  # VaR Estimation
  y <- mu * matrix(1, dim(cl)[1], dim(cl)[2]) - sigma * log(- n * log(cl));
  
  return(y)
} 