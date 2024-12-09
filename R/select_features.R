#' @title Feature Selection
#'
#' @param X The input data matrix, where each row represents a sample and each column represents a feature.
#' @param y The target variable vector.
#' @param threshold The correlation threshold used to select features correlated with the target variable, default is 0.2.
#'
#' @return The selected feature matrix.
#' @export
#'
#' @examples
#' X <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 2)
#' y <- c(1, 2, 3)
#' select_features(X, y)
select_features <- function(X, y, threshold = 0.2) {
  correlations <- apply(X, 2, function(col) cor(col, y))  
  selected_features <- names(correlations)[abs(correlations) > threshold]  
  X_selected <- X[, selected_features, drop = FALSE]  
  return(X_selected)
}
