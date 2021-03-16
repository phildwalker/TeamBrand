#packages
required_packages <- c("highcharter",
                       "ggplot2",
                       "gridExtra",
                       "knitr",
                       "DT",
                       "grid",
                       "conflicted",
                       "grDevices",
                       "kableExtra",
                       'sysfonts',
                       'reactable')
lapply(required_packages, usethis::use_package)
usethis::use_package("glue")
usethis::use_package("showtext")
usethis::use_package("htmltools", type = 'Suggests')
usethis::use_package("ggtext", type = 'Suggests')
usethis::use_package("rstudioapi", type = 'Suggests')
usethis::use_package("scales", type = 'Suggests')
