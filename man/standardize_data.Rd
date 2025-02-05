% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/standardize_data.R
\name{standardize_data}
\alias{standardize_data}
\title{Data Standardization}
\usage{
standardize_data(X)
}
\arguments{
\item{X}{The input matrix or data frame, where each column represents a feature.}
}
\value{
The standardized data with mean 0 and standard deviation 1.
}
\description{
Data Standardization
}
\examples{
X <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 2)
standardize_data(X)
}
