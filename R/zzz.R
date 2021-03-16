# Set the theme for ggplot2 to minimal
.onLoad <- function(libname, pkgname){

  load_default_font()

  showtext::showtext_auto()

  ggplot2::theme_set(theme_cone())
#
#   knitr::knit_hooks$set(inline = clean_numbers,
#                         #dropdown = knit_dropdown,
#                         chunk = ea_hooks)

  set_cone_defaults()

  conflicted::conflict_prefer(name = "geom_bar",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_col",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_line",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_point",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_jitter",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_path",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "geom_step",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "scale_color_discrete",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "scale_colour_discrete",
                              winner = "eastyle", quiet = TRUE)
  conflicted::conflict_prefer(name = "scale_fill_discrete",
                              winner = "eastyle", quiet = TRUE)

  conflicted::conflict_prefer(name = "kable",
                              winner = "eastyle", quiet = TRUE)

  conflicted::conflict_prefer(name = "kable_styling",
                              winner = "eastyle", quiet = TRUE)

  conflicted::conflict_prefer(name = "datatable",
                              winner = "eastyle", quiet = TRUE)

  conflicted::conflict_prefer(name = "reactable",
                              winner = "eastyle", quiet = TRUE)


}
