#' Get the OS imformation.
#' @examples
#' which_os()
#' get_os()
#' @export

which_os <- function(){
  switch(Sys.info()[['sysname']],
         Windows= {print("I'm a Windows PC.")},
         Linux  = {print("I'm a penguin.")},
         Darwin = {print("I'm a Mac.")})
}
