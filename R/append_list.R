#' Append r object to a list
#'
#' @param list R list.
#' @param obj R object to be appended to the list.
#' @param obj.name R object name to be used to the list.
#' @return
#'   \item{list_new}
#' @seealso \code{\link{hcl}}
#' @example append_list(list, x, "X")
#' @export

append_list <- function(list, obj, obj.name, overwrite=TRUE){
  if (!is.list(obj)) obj <- list(obj)
  if (!is.null(list[[obj.name]]) & overwrite == TRUE){
    list_new <- list
    list_new[obj.name] <- obj
  } else {
    list_new <- c(list,obj)
    names(list_new)[length(list_new)] <- obj.name
  }
}
