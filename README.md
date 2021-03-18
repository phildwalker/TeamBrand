
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
#> 
#> Attaching package: 'TeamBrand'
#> The following objects are masked from 'package:ggplot2':
#> 
#>     geom_bar, geom_col, geom_jitter, geom_line, geom_path, geom_point,
#>     geom_step, geom_text

ggplot(mtcars, aes(mpg, disp, color = factor(cyl)))+
  geom_point()+
  scale_color_brand(palette = "mixed")+
  labs(
    title = "A Nice ggplot2 Graph",
    subtitle = "Including a subtitle", 
    caption = "Including a fun caption about the dataset [mtcars]"
  )
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
