#' Get OS imformation.
#' @return \item{os}{Returns a string indicating the operating systems, 'windows', 'linux', or 'osx'.}
#' @examples
#' get_os()
#' @seealso Function \code{\link{which_os}}
#' @export

get_os <- function(){
  sysinf <- Sys.info()
  if (!is.null(sysinf)){
    os <- sysinf['sysname']
    if (os == 'Darwin')
      os <- "osx"
  } else { ## mystery machine
    os <- .Platform$OS.type
    if (grepl("^darwin", R.version$os))
      os <- "osx"
    if (grepl("linux-gnu", R.version$os))
      os <- "linux"
  }
  tolower(os)
  return(os)
}
