#!/usr/bin/env Rscript

ipak <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg))
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}

# install latest readxl to fix https://github.com/tidyverse/readxl/issues/59
install_github("tidyverse/readxl")

packages <- c("ggplot2", "dplyr", "lubridate", "RColorBrewer", "scales", "gridExtra",
              "GGally", "gganimate", "plotly", "caret", "stringr", "DT", "data.table",
              "datatable", "maps", "ggmap", "ggthemes", "ggplot2", "leaflet", "readr")


ipak(packages)
