# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' Say hi to the animals
#'
#' @param n Number of times to say hello
#'
#' @return A nice greeting
#' @export
#'
#' @examples
#' hiRhino()
#' hiRhino(2)
hiRhino <- function(n=1) {
  if(n==0) {return("Hey, no Rhinos!")}
  if(n<0) {return("Oops, Rhinos cant be negative!")}
  paste("Hello, ", paste(rep("Rhino",n), collapse = " "), "!", sep="")
}
