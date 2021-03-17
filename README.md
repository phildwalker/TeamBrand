
<!-- README.md is generated from README.Rmd. Please edit that file -->

# team brands

# tanger\_styles

r package to help with viz at tanger

For the team &gt;&gt; Enterprise Insights and Analytics

Font &gt;&gt;
<https://fonts.googleapis.com/css?family=Montserrat:300,400,700,900%7CRoboto:300,400,500,900>

ticker &gt;&gt; SKT

Colors … \#000000 &gt;&gt; black, \#464646 &gt;&gt; dark grey, \#C00000
&gt;&gt; red

The goal of team\_brand is to apply the brand style and identity
guidelines. This includes standards for ggplot, highcharter, datatable,
kable, and reactable. This also includes standard CSS documents for use
with R Markdown generated webpages.

## Installation

``` r
remotes::install_github("phildwalker/TeamBrand")
```

## ggplot2

``` r
library(ggplot2)
library(TeamBrand)
#> Loading required namespace: sysfonts

ggplot(mtcars, aes(mpg, disp))+
  geom_point()+
  labs(
    title = "A Nice ggplot2 Graph"
  )
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
