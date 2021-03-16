#' Set Cone Defaults On
#' @description Turns on all of the default themes for the EA styleguide
#' @export
set_brand_defaults <- function(){

  

  ggplot2::update_geom_defaults("bar", list(fill = tanger_dark_internal))
  ggplot2::update_geom_defaults("col", list(fill = tanger_dark_internal))
  ggplot2::update_geom_defaults("point", list(colour = tanger_dark_internal))
  ggplot2::update_geom_defaults("line", list(colour = tanger_dark_internal))
  ggplot2::update_geom_defaults("pointrange", list(colour = tanger_dark_internal))
  ggplot2::update_geom_defaults("step", list(colour = tanger_dark_internal))
  ggplot2::update_geom_defaults("path", list(colour = tanger_dark_internal))
  ggplot2::update_geom_defaults("boxplot", list(fill = tanger_dark_internal))
  ggplot2::update_geom_defaults("density", list(fill = tanger_dark_internal))
  ggplot2::update_geom_defaults("violin", list(fill = tanger_dark_internal))

  ggplot2::update_stat_defaults("count", list(fill = tanger_dark_internal))
  ggplot2::update_stat_defaults("boxplot", list(fill = tanger_dark_internal))
  ggplot2::update_stat_defaults("density", list(fill = tanger_dark_internal))
  ggplot2::update_stat_defaults("ydensity", list(fill = tanger_dark_internal))

  options(
    ggplot2.continuous.colour = "gradient",
    ggplot2.continuous.fill = "gradient"
  )
}


#' Resets all the ggplot2 theme to its default settings
#'
#'
#' @export

undo_brand_defaults <- function() {

  # set default theme to theme_urbn_web() ----------------------------------

  ggplot2::theme_set(ggplot2::theme_grey())

  # add Helvetica font to text and label geoms ---------------------------

  ggplot2::update_geom_defaults("text", list(family = "Helvetica"))
  ggplot2::update_geom_defaults("label", list(family = "Helvetica"))
  ggplot2::update_geom_defaults("text_repel", list(family = "Helvetica"))
  ggplot2::update_geom_defaults("label_repel", list(family = "Helvetica"))

  # set default colours for monochromatic geoms -----------------------------

  ggplot2::update_geom_defaults("bar", list(fill = "#595959"))
  ggplot2::update_geom_defaults("col", list(fill = "#595959"))
  ggplot2::update_geom_defaults("point", list(colour = "black"))
  ggplot2::update_geom_defaults("line", list(colour = "#595959"))
  ggplot2::update_geom_defaults("pointrange", list(colour = "#595959"))
  ggplot2::update_geom_defaults("boxplot", list(fill = "#595959"))
  ggplot2::update_geom_defaults("density", list(fill = "#595959"))
  ggplot2::update_geom_defaults("violin", list(fill = "#595959"))

  # set default colours for monochromatic stats -----------------------------

  ggplot2::update_stat_defaults("count", list(fill = "#595959"))
  ggplot2::update_stat_defaults("boxplot", list(fill = "#595959"))
  ggplot2::update_stat_defaults("density", list(fill = "#595959"))
  ggplot2::update_stat_defaults("ydensity", list(fill = "#595959"))

}
