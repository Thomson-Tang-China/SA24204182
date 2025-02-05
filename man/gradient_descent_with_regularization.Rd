% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{gradient_descent_with_regularization}
\alias{gradient_descent_with_regularization}
\title{Gradient Descent with L2 Regularization for Optimizing Linear Regression Parameters}
\usage{
gradient_descent_with_regularization(X, y, learning_rate, iterations, lambda)
}
\arguments{
\item{X}{Input data matrix, where each row represents a sample and each column represents a feature.}

\item{y}{The vector of the target variable.}

\item{learning_rate}{The learning rate that controls the step size of each update.}

\item{iterations}{The number of iterations for gradient descent.}

\item{lambda}{The penalty coefficient for L2 regularization, used to prevent overfitting.}
}
\value{
Returns the optimized regression coefficients (theta).
}
\description{
Gradient Descent with L2 Regularization for Optimizing Linear Regression Parameters
}
