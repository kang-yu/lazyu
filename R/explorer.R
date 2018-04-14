#' Open a file or folder
#'
#' \code{explorer} opens a file or folder on your Windows, Mac or Linux computer.
#'
#' @param path The path string to a file or directory.
#' @seealso \code{\link[base]{shell}} and \code{\link[base]{system}}
#' @examples
#' explorer("C:/Users/")
#' explorer("/Users/")

explorer <- function(path){
  switch(Sys.info()[['sysname']],
         Windows= {shell(paste("explorer", path), intern = TRUE, translate = TRUE)},
         Linux  = {system(paste("xdg-open", path))},
         Darwin = {system2("open", path)})
}
