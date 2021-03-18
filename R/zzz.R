# Set the theme for ggplot2 to minimal
.onLoad <- function(libname, pkgname){

  load_default_font()

  showtext::showtext_auto()

  ggplot2::theme_set(theme_brand())
#
#   knitr::knit_hooks$set(inline = clean_numbers,
#                         #dropdown = knit_dropdown,
#                         chunk = ea_hooks)

  set_brand_defaults()

  conflicted::conflict_prefer(name = "geom_bar",
                              winner = "TeamBrand", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_col",
                              winner = "TeamBrand", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_line",
                              winner = "TeamBrand", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_point",
                              winner = "TeamBrand", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_jitter",
                              winner = "TeamBrand", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_path",
                              winner = "TeamBrand", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_step",
                              winner = "TeamBrand", quiet = TRUE)
  # conflicted::conflict_prefer(name = "scale_color_discrete",
  #                             winner = "TeamBrand", quiet = TRUE)
  # conflicted::conflict_prefer(name = "scale_colour_discrete",
  #                             winner = "TeamBrand", quiet = TRUE)
  # conflicted::conflict_prefer(name = "scale_fill_discrete",
  #                             winner = "TeamBrand", quiet = TRUE)

  conflicted::conflict_prefer(name = "kable",
                              winner = "TeamBrand", quiet = TRUE)

  conflicted::conflict_prefer(name = "kable_styling",
                              winner = "TeamBrand", quiet = TRUE)

  conflicted::conflict_prefer(name = "datatable",
                              winner = "TeamBrand", quiet = TRUE)

  conflicted::conflict_prefer(name = "reactable",
                              winner = "TeamBrand", quiet = TRUE)


}
