#' @title Fit a Linear Regression Model using lm()
#'
#' @param data The input data.
#' @param formula The formula for the regression model.
#'
#' @return The results of the fitted regression model.
#' @export
#'
#' @examples
#' data <- data.frame(x = c(1, 2, 3, 4), y = c(2, 4, 6, 8))
#' formula <- y ~ x
#' linear_regression(data, formula)
linear_regression <- function(data, formula) {
  model <- lm(formula, data = data)  
   
  return(model)  
}
