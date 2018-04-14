#' Format numbers to percent
#'
#' Formats a numeric vector to percentage string vector.
#'
#' @param x A numeric vector.
#' @param digits An integer to define the number of dicimals, default is 2.
#' @param \dots Arguments passed to \code{\link{formatC}}.
#' @seealso \code{\link{formatC}} and \code{\link{sprintf}}
#' @examples
#' percent(1:3, 1)
#' @export

percent <- function(x, digits = 2, format = "f", ...) {
  paste0(formatC(100 * x, format = format, digits = digits, ...), "%")
}
