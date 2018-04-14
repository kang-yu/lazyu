#' Format numbers to percent
#'
#' Formats numbers to percentage.
#'
#' @param x A numeric vector.
#' @param digits A integer to define the number of dicimals.
#' @param \dots Arguments passed to \code{\link{formatC}}.
#' @seealso \code{\link{formatC}} and \code{\link{sprintf}}
#' @examples
#' percent(1:3)

percent <- function(x, digits = 2, format = "f", ...) {
  paste0(formatC(100 * x, format = format, digits = digits, ...), "%")
}
