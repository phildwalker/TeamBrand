
#' Cone Colors
#'
#' The primary colour guide for Cone Health

"tanger_colors"

#' Cone Colors 1
#'
#' Secondary Themes
#'
"tanger_colors_pal1"



# drsimonj corporate colors
# using https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2 as template
palette_main <-c(
  red = "#BD2326",
  black = "#000000",
  grey = "#464646"
)

#' Function to extract pdw colors as hex codes
#' @description This function creates the output vector for the colors into hex codes
#' @param ... Character names of pdw_colors
#' @export
brand_cols <- function(...) {
  cols <- c(...)
  
  if (is.null(cols))
    return (palette_main)
  
  palette_main[cols]
}




brand_palettes <- list(
  'main' = brand_cols("red", "black", "grey"),
  'mixed' = brand_cols("black", "red", "grey")
)

#' Return function to interpolate a brand color palette
#' @description This function creates a couple of palettes that could be used when plotting
#' @param palette Character name of palette in pdw_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
#'
brand_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- brand_palettes[[palette]]
  
  if (reverse) pal <- rev(pal)
  
  colorRampPalette(pal, ...)
}




#' Color scale constructor for theme colors
#' @description This function creates the colors from the palette
#' @param palette Character name of palette in theme_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
#'
scale_color_brand <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- brand_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("colour", paste0("brand_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}


#' Fill scale constructor for pdw colors
#' @description This function creates the fill colors from the palette
#' @param palette Character name of palette in pdw_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
#'
scale_fill_brand <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- brand_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("brand_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}












