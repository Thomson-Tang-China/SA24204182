#include <Rcpp.h>
using namespace Rcpp;
//' @title Calculate the R² value
//' @name calculate_r2
//' @param y_true The vector of true values.
//' @param y_pred The vector of predicted values.
//' @return Returns the R² value, which represents the goodness of fit of the model.
//' @export
// [[Rcpp::export]]
 double calculate_r2(NumericVector y_true, NumericVector y_pred) {
   double ss_total = 0.0;
   double ss_residual = 0.0;
   
   double mean_y = mean(y_true);  // Calculate the mean of the true values
   
   // Calculate the total sum of squares and the residual sum of squares
   for (int i = 0; i < y_true.size(); i++) {
     ss_total += pow(y_true[i] - mean_y, 2);
     ss_residual += pow(y_true[i] - y_pred[i], 2);
   }
   
   // Calculate the R² value
   return 1 - (ss_residual / ss_total);
 }