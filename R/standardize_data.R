#' @title Data Standardization
#'
#' @param X The input matrix or data frame, where each column represents a feature.
#'
#' @return The standardized data with mean 0 and standard deviation 1.
#' @export
#'
#' @examples
#' X <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 2)
#' standardize_data(X)
standardize_data <- function(X) {
  n <- ncol(X)
  for (i in 1:n) {
    X[,i] <- (X[,i] - mean(X[,i])) / sd(X[,i]) 
  }
  return(X)
}
