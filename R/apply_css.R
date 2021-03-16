#' Applying Cone Health css Files
#' @description This function is designed to pull css files from the
#'     \pkg{eastyle} package. Css files are available for shiny apps, websites,
#'     rmarkdown reports, and more. These style sheets are intended to keep with
#'     Cone Health brand standards.
#'     The function returns a character vector containing the full file names
#'     of all newly created css files on the users local machine.
#' @param css_style chacter vector identifying the type(s) of output that the
#'     css is needed for. One or more of \code{shiny}, \code{web},
#'     \code{report}, \code{presentation}, or \code{guidebook}
#'     for a shiny web application, web page, rmarkdown report, presentation,
#'     and/or guidebooks respectively.
#' @param location file path location of where to save the css file(s), defaults
#'     to \code{here::here()}
#' @param new_name a character vector specifying the name(s) of the css file(s).
#'     Should be of length 1 for \code{combine=T} (default) or the same length
#'     of css_styles for \code{combine = F}.
#'     The default of \code{NULL} will create a new file of the name
#'     \code{styles.css} if combine = T. If combine = F each file requested will
#'     be saved off separately and the default file names of \code{shiny.css},
#'     \code{web.css}, \code{report.css}, etc. will be used
#' @param combine logical whether or not to combine the css files if multiple
#'     are requested. Defaults to TRUE.
#' @param shiny_small logical indicating whether or not the shiny application
#'     font should be smaller or not. Defaults to \code{FALSE}. Ignored for
#'     \code{css_style!='shiny'}
#' @export
apply_cone_css <- function(css_style = c("report", "shiny", "web", "guidebook",
                                         "presentation"),
                           location = here::here(),
                           new_name = NULL,
                           combine = T, shiny_small = F){
  stopifnot(is.logical(combine))
  stopifnot(is.logical(shiny_small))
  stopifnot(dir.exists(location))
  if(!is.null(new_name)){
    if(length(new_name)!=length(css_style) & !combine) stop('a new_name must be supplied for every css_style\'s requested or considering using combine=T')
    if(length(new_name)!=1 & combine) stop('only one new_name can be used with combine=T')
  }
  if(is.null(new_name) & combine) new_name <- 'styles'

  selection <- match.arg(css_style, several.ok = T)

  if(shiny_small & (!'shiny' %in% selection)) {
    message('No shiny css requested, ignoring shiny_small=T')
    }


  css_location <- sapply(selection, function(x)system.file(file.path("css", paste0(x,'.css')),
                              package = "eastyle"))

  css_base <- readLines(system.file(file.path("css", 'cone.css'),
                                    package = "eastyle"))

  if(shiny_small) {
    css_shiny_small <- readLines(system.file(file.path("css", 'shiny-small.css'),
                                             package = "eastyle"))
  }

  out <- NULL
  if(!combine){
    #sapply(css_location, function(x)file.copy(x, location))
    # add base css to each file
    for(i in 1:length(selection)){

      css_tmp <- readLines(css_location[i])
      if(selection[i] == 'shiny' & shiny_small) css_tmp <- c(css_shiny_small, css_tmp)
      css_out <- c(css_base, css_tmp)

      css_file <- tempfile()
      writeLines(css_out, css_file)
      file.copy(css_file, location)

      filename <- paste0(ifelse(is.null(new_name),
                                basename(css_location[i]),
                                paste0(gsub('.css$','',
                                            ifelse(length(new_name) == 1,
                                                   new_name,
                                                   new_name[i])),'.css')))
      file.rename(file.path(location, basename(css_file)),
                  file.path(location, filename))
      out <- c(out, file.path(location, filename))
    }
  } else {
    css_out <- css_base
    for(i in 1:length(selection)){
      css_tmp <- readLines(css_location[i])
      if(selection[i] == 'shiny' & shiny_small) css_tmp <- c(css_shiny_small, css_tmp)
      css_out <- c(css_out, css_tmp)
    }
    css_file <- tempfile()
    writeLines(css_out, css_file)
    file.copy(css_file, location)
    filename <- paste0(gsub('.css$','',new_name),'.css')
    file.rename(file.path(location, basename(css_file)),
                file.path(location, filename))
    out <- c(out, file.path(location, filename))
  }

  return( out )

}
