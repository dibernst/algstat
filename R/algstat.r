#' algstat : Algebraic statistics in R
#' 
#' algstat is a package for algebraic statistics in R.  Current applications
#' include exact inference in log-linear models for contingency table data,
#' analysis of ranked and partially ranked data, and general purpose tools for
#' multivariate polynomials, building on the mpoly package.  To aid in the
#' process, algstat has ports to Macaulay2, Bertini, LattE and 4ti2.
#' 
#' @import stringr mpoly reshape2 Rcpp lpSolve parallel memoise ggplot2 latter
#' @importFrom stats deriv dmultinom loglin runif sd
#' @importFrom utils combn download.file
#' 
#' @useDynLib algstat
#' @docType package
#' @name algstat
#' @aliases algstat package-algstat
NULL