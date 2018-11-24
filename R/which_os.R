#' Get the OS imformation.
#' @examples
#' which_os()
#' @seealso Function \code{\link{get_os}}
#' @export

which_os <- function(){
  switch(Sys.info()[['sysname']],
         Windows= {print("I'm a Windows PC.")},
         Linux  = {print("I'm a Linux penguin.")},
         Darwin = {print("I'm a Mac OSX.")})
}
