#' Cone Theme Which is Set to the Default
#' @description This function creates the default theme for Cone Graphs
#' @family EA ggplot themes
#' @importFrom ggplot2 %+replace%
#' @param base_size the base size of the ggplot with default of \code{14}
#' @param plot_title_size the size of the title plot with default of \code{18}
#' @param plot_subtitle_size the size of the title plot with default of \code{16}
#' @param legend.position default of \code{"top"}
#' @param background_color the background color of the blot with default of \code{#F9F9F9}
#' @param ... any additional parameters to pass to \code{ggplot2::theme}
#' @export

theme_brand <- function (base_size = 14,
                        plot_title_size = 18,
                        plot_subtitle_size = 16,
                        legend.position = "top",
                        background_color = "#F9F9F9",
                        ...) {

  `%+replace%` <- ggplot2::`%+replace%`

  ggplot2::theme_minimal(base_size = base_size) %+replace%
    ggplot2::theme(text = ggplot2::element_text(family = 'Montserrat'),
                   plot.title = ggplot2::element_text(colour = "#000000",
                                                      hjust = 0, face = "bold",
                                                      size = plot_title_size ),
                   plot.subtitle = ggplot2::element_text(color = "#555555",
                                                         hjust = 0,
                                                         size = plot_subtitle_size),
                   plot.caption = ggplot2::element_text(color = "#555555", hjust = 1),
                   axis.text = ggplot2::element_text( size = ggplot2::rel(0.9)),
                   axis.title = ggplot2::element_text(size = ggplot2::rel(1.2)),
                   panel.grid = ggplot2::element_line(colour = "grey91"),
                   legend.position = legend.position,
                   plot.background = ggplot2::element_rect(fill = background_color,
                                                           linetype = 1,
                                                           color = background_color),
                   legend.background = ggplot2::element_rect(fill = background_color,
                                                             linetype = 1,
                                                             color = background_color),
                   ...
                   )
}

#' A Second Cone Theme for Facet Charts
#' @description  This theme is designed for use in Facet Charts
#'    called by `ggplot2::facet_grid` or `ggplot2::facet_wrap`. It adds
#'    color to the strip background and a black outline around the individual
#'    small multiple charts.
#' @family EA ggplot themes
#' @param base_size the base size of the ggplot with default of \code{10}
#' @param plot_title_size the size of the title plot with default of \code{18}
#' @param plot_subtitle_size the size of the title plot with default of \code{16}
#' @param strip_text_size the size of the facet strip text with default of \code{12}
#' @param legend.position default of \code{"top"}
#' @param background_color the background color of the blot with default of \code{#F9F9F9}
#' @param ... any additional parameters to pass to \code{ggplot2::theme}
#' @export
theme_brand_facet <- function (base_size = 10,
                              plot_title_size = 18,
                              plot_subtitle_size = 16,
                              strip_text_size = 12,
                              legend.position = "top",
                              background_color = "#F9F9F9",
                              ...) {

  `%+replace%` <- ggplot2::`%+replace%`
  ggplot2::theme_bw(base_size = base_size) %+replace%
    ggplot2::theme(text = ggplot2::element_text(family = 'Montserrat'),
                   plot.title = ggplot2::element_text(colour = "#000000c",
                                                      hjust = 0, face = "bold",
                                                      size = plot_title_size),
                   plot.subtitle = ggplot2::element_text(color = "#555555",
                                                         hjust = 0,
                                                         size = plot_subtitle_size,
                                                         margin = ggplot2::margin(3, 3, 3, 3)),
                   plot.caption = ggplot2::element_text(color = "#555555", hjust = 1),
                   strip.background = ggplot2::element_rect(fill = '#464646'),
                   strip.text = ggplot2::element_text(color = '#FFFFFF', face = "bold",
                                                      size = strip_text_size,
                                                      margin = ggplot2::margin(3, 3, 3, 3)),
                   axis.text = ggplot2::element_text( size = ggplot2::rel(0.8)),
                   axis.title = ggplot2::element_text(size = ggplot2::rel(1.1)),
                   panel.grid = ggplot2::element_line(colour = "grey91"),
                   legend.position = legend.position,
                   plot.background = ggplot2::element_rect(fill = background_color,
                                                           linetype = 1,
                                                           color = background_color),
                   legend.background = ggplot2::element_rect(fill = background_color,
                                                             linetype = 1,
                                                             color = background_color),
                   ...)
}
