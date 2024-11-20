#'lr_coefficients
#'
#'performs single or multiple linear regression on selected predictor variable and covariates
#'
#'@param predictor name of predictor "Y" variable
#'@param covariates vector of strings containing names of all the "X" covariates/parameters
#'@param data dataframe with data of interest
#'
#'@return Matrix of estimates for regression coefficient,
#'  standard errors, and t tests with p-values
#'
#'@examples
#'lr_coefficients("mpg", c("cyl", "disp", "hp"), data=mtcars)
#'
#'@importFrom stats pt
#'
#'@export
#'

lr_coefficients = function (predictor, covariates, data = NULL){
  Y = matrix(unlist(data[toString(predictor)]))
  n = nrow(Y)
  X = cbind(rep(1, n), matrix( unlist(data[covariates]), nrow = n ) ) #model matrix
  p = ncol(X)

  betahat = solve( t(X)%*%X ) %*% t(X) %*% Y
  Yhat = X %*% betahat
  epsilonhat = Y - Yhat

  sigma_squared = t(epsilonhat) %*% epsilonhat/(n-p)

  var_betahat = diag( solve(t(X)%*%X) )*c(sigma_squared)
  se_betahat = sqrt(var_betahat) ## se of betahat

  t_statistic = c(betahat/se_betahat)
  p_value = c(2*( 1-pt(q=abs(t_statistic),df=n-p) ))

  estimation = cbind(Estimate=c(betahat), Std_Err=se_betahat,
                     t_statistic=t_statistic, p_value=p_value)
  rownames(estimation) = c("Intercept", covariates)

  return(estimation)
}
