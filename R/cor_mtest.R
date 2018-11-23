#' Significance test for each pair of input variables
#'
#' Significance test which produces p-values and confidence intervals for each pair of input variables.
#'
#' @param mat Maxtrix input with each column as a variable.
#' @param \dots Arguments passed to \code{\link[stats]{cor.test}}.
#'
#' @return
#'   \item{p.mat}{Returns a matrix containing the p-values of correlations}
#'
#' @seealso Function \code{\link{cor.test}}
#' @export
#' @importFrom stats cor.test


######################################################################
# Calculate matrix of the p-value of the correlation
# mat : is a matrix of data
# ... : further arguments to pass to the native R cor.test function

cor_mtest <- function(mat, ...) {
  mat <- as.matrix(mat)
  n <- ncol(mat)
  p.mat<- matrix(NA, n, n)
  diag(p.mat) <- 0
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {
      tmp <- cor.test(mat[, i], mat[, j], ...)
      p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
    }
  }
  colnames(p.mat) <- rownames(p.mat) <- colnames(mat)
  p.mat
}
