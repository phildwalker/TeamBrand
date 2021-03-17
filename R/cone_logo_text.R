#' Generate Cone Health Stylized Text Logo
#'
#' @description Creates a grid object with Cone Health Text Logo
#' @param background Background color of the logo text. Defaults to
#'      \code{#F9F9F9}, the default background color of charts
#'
#' @md
#' @export
cone_logo_text <- function(background = "#F9F9F9") {
  grid::grobTree(
    gp = grid::gpar(fontsize = 7, hjust = 1),
    grid::rectGrob(gp = grid::gpar(fill = background, col = background)),
    grid::textGrob(label = " H E A L T H ",
                   name = "caption1",
                   x = grid::unit(1, "npc"),
                   y = grid::unit(0, "npc"),
                   hjust = 1,
                   vjust = 0,
                   gp = grid::gpar(col = "#00205C")),
    grid::textGrob(label = "C O N E ",
                   x = grid::unit(1, "npc") -
                     grid::grobWidth("caption1") -
                     grid::unit(0.001, "lines"),
                   y = grid::unit(0, "npc"),
                   hjust = 1,
                   vjust = 0,
                   gp = grid::gpar(col = "#00a2b2"))
  )
}

#' Add Stylized Cone Health to a ggplot figure
#'
#' @description Add the Text Logo to the ggplot2 figure.
#'
#' **Note:** This will override the use of \code{labs(caption = )}.
#'
#'
#' @param fig the ggplot item to apply the text logo to
#' @param caption optional, additional caption text to apply to the figure.
#'      Note: for linebreaks in your caption, use \code{<br>} instead of
#'      \code{\\n}.
#' @param captionsize optional text size in pts of the caption. The default of
#'      \code{NULL} will use the default caption size of ggplot theme being used.
#' @md
#' @export
#'
#'
add_text_logo <- function(fig, caption = NULL, captionsize = NULL){
  ch <- "<span style='color:#00a2b2; font-family:sans;'>C O N E </span><span style = 'color:#00205c; font-family:sans;'> H E A L T H</span>"
  requireNamespace('ggtext')
  fig + ggplot2::labs(caption = paste0(ifelse(is.null(caption),
                                     '',
                                     paste0(caption,'<br><br>')),
                              ch)) +
    ggplot2::theme(plot.caption = ggtext::element_markdown(size = captionsize))

     }
