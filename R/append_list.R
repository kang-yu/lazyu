#' Append r object to a list
#'
#' @param list R list.
#' @param obj R object to be appended to the list.
#' @param obj.name R object name to be used to the list.
#' @param overwrite logical value indicates whether overwrite object with the same name.
#' @return
#'   \item{list_new}
#' @seealso \code{\link{hcl}}
#' @examples
#' list <- list(c("a", "b"))
#' x <- list(c(1:5))
#' append_list(list, x, "X")
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
