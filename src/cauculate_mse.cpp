#include <Rcpp.h>
using namespace Rcpp;


//' @title Calculate the Mean Squared Error (MSE)
//' @name calculate_mse
//' @param y_true The vector of true values.
//' @param y_pred The vector of predicted values.
//' @return Returns the Mean Squared Error (MSE).
//' @export
// [[Rcpp::export]]
 double calculate_mse(NumericVector y_true, NumericVector y_pred) {
   int n = y_true.size();
   double mse = 0.0;
   
   for (int i = 0; i < n; i++) {
     mse += pow(y_true[i] - y_pred[i], 2);
   }
   
   return mse / n;  // Return the Mean Squared Error
 }