#' Use the ggplot style colors
#'
#' Create a vector of colors of the ggplot style.
#'
#' @param n An integer to define the number of colors to be generated .
#' @seealso \code{\link{hcl}}
#' @example
#' ggplotColours(3)
#' @export

ggplotColours <- function(n = 1, h = c(0, 360) + 15){
  if ((diff(h) %% 360) < 1) h[2] <- h[2] - 360/n
  hcl(h = (seq(h[1], h[2], length = n)), c = 100, l = 65)
}
