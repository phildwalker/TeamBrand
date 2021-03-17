#' Brand Colors Quick Reference
#'
#' @description Show the hex of all Cone colors.
#'
#' @export
show_cols <- function(){
  requireNamespace('scales')
  scales::show_col(TeamBrand::palette_main)
}
