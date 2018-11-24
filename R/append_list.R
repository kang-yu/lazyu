#' Append R object to a list.
#'
#' @param l A R-list.
#' @param obj R object to be appended to the list.
#' @param obj.name R object name to be used to the list.
#' @param overwrite logical value indicates whether overwrite object with the same name.
#' @return
#'   \item{list_new}
#' @seealso \code{\link{hcl}}
#' @examples
#' l <- list(c("a", "b"))
#' x <- list(c(1:5))
#' append_list(l, x, "X")
#' @export

append_list <- function(l, obj, obj.name, overwrite = TRUE){

  if (!is.list(obj)) obj <- list(obj)
  if (!is.null(l[[obj.name]]) & overwrite==TRUE){
    l_new <- l
    l_new[obj.name] <- obj
  } else {
    l_new <- c(l, obj)
    names(l_new)[length(l_new)] <- obj.name
  }
}
