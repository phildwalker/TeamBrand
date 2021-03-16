## Check if a family has been loaded
already_loaded = function(family)
{
  all(family %in% sysfonts::font_families())
}


#' Load Fonts for the 'eastyle' Package
#'
#' This function loads fonts that will be used by the \pkg{eastyle} package. Based on the same function from \pkg{showtextdb} by Yixuan Qiu https://statr.me/
#'
#' @export
#' @author Yixuan Qiu
#' @examples \dontrun{
#' sysfonts::font_families()
#'
#' load_showtext_fonts()
#' sysfonts::font_families()
#' }
## Load montse font
load_default_font = function()
{
  requireNamespace("sysfonts")
  ## Check if montse has been loaded already
  if(already_loaded("Montserrat"))
    return(invisible(NULL))

  ## Add font to sysfonts
  sysfonts::font_add(family = "Montserrat",
                     regular = system.file("fonts", "Montserrat-Regular.ttf", package = "team_brand"),
                     italic = system.file("fonts", "Montserrat-Italic.ttf", package = "team_brand"),
                     bold = system.file("fonts", "Montserrat-Bold.ttf", package = "team_brand"),
                     bolditalic = system.file("fonts", "Montserrat-BoldItalic.ttf", package = "team_brand")
                     # regular = here::here('inst', "fonts", "Montserrat-Regular.ttf"),
                     # italic = here::here('inst', "fonts", "Montserrat-Italic.ttf"),
                     # bold = here::here('inst', "fonts", "Montserrat-Bold.ttf"),
                     # bolditalic = here::here('inst', "fonts", "Montserrat-BoldItalic.ttf")
  )


  invisible(NULL)
}
