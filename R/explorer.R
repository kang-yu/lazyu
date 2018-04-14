#' Open a file or folder on your computer, supports Windows, Mac and Linux.
#'
#' @param path The path string to a file or directory.
#' @examples
#' explorer("C:/Users/")
#' explorer("/Users/kang")

explorer <- function(path){
  switch(Sys.info()[['sysname']],
         Windows= {shell(paste("exploer", path), intern = TRUE, translate = TRUE)},
         Linux  = {system(paste("xdg-open", path))},
         Darwin = {system2("open", path)})
}
