#' reactable Updated Defaults
#' @description Reactable with striped rows, highlight on hover, and Cone Health
#'      color and font.
#' @param data the data
#' @param striped whether or not to stripe the columns, default \code{TRUE}
#' @param highlight whether or not to highlight entire row on hover, default \code{TRUE}
#' @param fontSize default \code{'14px'}
#' @param ... with other options
#' @export
reactable <- function(data,
                      striped = T,
                      highlight = T,
                      fontSize = '16px',
                      ...){

  requireNamespace("reactable")

  reactable::reactable(data,
                       striped = T,
                       highlight = T,
                       theme = reactableThemeCone(fontSize = fontSize),
                       ...)
}


#' Reactable Theme with Cone Colors
#' @description Default theme for reactables. Applied automatically when calling
#'       \code{eastyle::reactable}
#' @param borderColor border color
#' @param stripedColor striped columns color
#' @param highlightColor color of row on highlight
#' @param cellPadding table cell padding
#' @param headerBackgroundColor header background color
#' @param headerColor header font color
#' @param fontFamily table font
#' @param fontSize table font size
#' @param ... other parameters passed to \code{reactableTheme}
#' @export
reactableThemeCone <- function(borderColor = "#dfe2e5",
                     stripedColor = "#f6f8fa",
                     highlightColor = "#f0f5f9",
                     cellPadding = "8px 12px",
                     headerBackgroundColor = "#00A2B2",
                     headerColor = "#FFFFFF",
                     fontFamily = "Montserrat, Arial, sans-serif",
                     fontSize = '16px',
                     ...){

  requireNamespace("reactable")

  reactable::reactableTheme(
    borderColor = borderColor,
    stripedColor = stripedColor,
    highlightColor = highlightColor,
    cellPadding = cellPadding,
    headerStyle = list(backgroundColor = headerBackgroundColor,
                       color = headerColor),
    style = list(fontFamily = fontFamily,
                 fontSize = fontSize),
    ...
  )
}
