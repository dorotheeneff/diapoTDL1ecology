#######################################################################
# Project : L1SVTD2_ecology
#
# make.R
#
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Dorothee NEFF <dorothee.neff@univ-reunion.fr>
#
#######################################################################

## Create directories ----
reps <- c("data", "R", "output", "images")
lapply(reps, dir.create, showWarnings = FALSE)

## Install all necessary packages ----
pkg_list <- c(
  "tidyverse", "gt", "gtExtras", "reactable", "ggiraph", "here", "quarto",
  "rmarkdown", "gtsummary", "palmerpenguins", "fs", "skimr"
)

install.packages(pkg_list)

## Load the project functions ----
devtools::load_all()

## Render presentation for temperate forests ----
quarto::quarto_render(input = "presentation/tempForest.qmd")

