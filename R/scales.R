#' The EA `ggplot2` theme
#'
#' Color palettes used in the EA.
#'
#' @export
#' @param palette Palette name.
cone_color_pal <- function(palette = "categorical") {
  palette_list <- palette_cone

  types <- palette_list[[palette]]

  function(n) {
    if(n > length(palette_cone[[palette]])){
      grDevices::colorRampPalette(types[[2]])(n)
    } else{
      types[[n]]
    }

  }
}

#' Discrete color scale that aligns with the EA style
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_color_discrete <- function(...) {
  ggplot2::discrete_scale("colour", "cone", cone_color_pal("categorical"), ...)
}

#' Discrete color scale that aligns with the EA style
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_colour_discrete <- function(...) {
  ggplot2::discrete_scale("colour", "cone", cone_color_pal("categorical"), ...)
}

#' Discrete fill scale that aligns with the EA style
#'
#' @md
#' @param ... other arguments passed to \code{discrete_scale()}
#' @export
scale_fill_discrete <- function(...) {
  ggplot2::discrete_scale("fill", "cone", cone_color_pal("categorical"), ...)
}


#' Continuous fill scale that aligns with the EA style
#' @md
#' @param ... other arguments passed to \code{scale_color_gradientn}
#' @export
scale_colour_continuous <- function(...){
  ggplot2::scale_color_gradientn(colors = palette_cone_main[c(3,1,6,2)], ...)
}

#' Continuous fill scale that aligns with the EA style
#' @md
#' @param ... other arguments passed to \code{scale_color_gradientn}
#' @export
scale_color_continuous <- function(...){
  ggplot2::scale_color_gradientn(colors = palette_cone_main[c(3,1,6,2)], ...)
}

#' Continuous fill scale that aligns with the EA style
#' @param ... other arguments passed to \code{scale_fill_gradientn}
#' @export
scale_fill_continuous <- function(...){
  ggplot2::scale_fill_gradientn(colors = palette_cone_main[c(3,1,6,2)], ...)
}
