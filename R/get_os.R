#' Get OS imformation.
#' @examples
#' get_os()
#' which_os()
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
}

which_os <- function(){
  switch(Sys.info()[['sysname']],
         Windows= {print("I'm a Windows PC.")},
         Linux  = {print("I'm a penguin.")},
         Darwin = {print("I'm a Mac.")})
}
