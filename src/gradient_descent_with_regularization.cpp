#include <Rcpp.h>
using namespace Rcpp;

//' @title Gradient Descent with L2 Regularization for Optimizing Linear Regression Parameters
//' @name gradient_descent_with_regularization
//' @param X Input data matrix, where each row represents a sample and each column represents a feature.
//' @param y The vector of the target variable.
//' @param learning_rate The learning rate that controls the step size of each update.
//' @param iterations The number of iterations for gradient descent.
//' @param lambda The penalty coefficient for L2 regularization, used to prevent overfitting.
//' @return Returns the optimized regression coefficients (theta).
//' @export
// [[Rcpp::export]]
 NumericVector gradient_descent_with_regularization(NumericMatrix X, NumericVector y, 
                                                    double learning_rate, int iterations, double lambda) {
   int m = X.nrow();  
   int n = X.ncol();  
   NumericVector theta(n);  
   
   for(int i = 0; i < iterations; i++) {
     NumericVector predictions = X * theta;  
     NumericVector errors = predictions - y;  
     
     NumericVector gradients = (1.0 / m) * sum(errors * X);
     
     for (int j = 1; j < n; j++) {
       gradients[j] = gradients[j] + (lambda / m) * theta[j]; 
     }
     
     theta = theta - learning_rate * gradients;
   }
   
   return theta; 
 }