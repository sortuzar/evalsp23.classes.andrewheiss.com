
# Limpiar environment ----------------------------------------------------------
rm(list=ls())

# Cargar librerías -------------------------------------------------------------
if (!require("pacman")) install.packages("pacman") # si falta pacman, instalar
pacman::p_load(
  tidyverse,
  knitr,
  rprojroot,
  rmarkdown,
  xaringan,
  xaringanExtra,
  devtools
  )

# Fijar directorio -------------------------------------------------------------
folder_project <- rprojroot::find_rstudio_root_file()
folder_here <- paste0(folder_project,"/slides")

# Crear vector de archivos .Rmd ------------------------------------------------
vec_slides <- list.files(path=folder_here,
                         pattern="^[0-99]{2}-(class|slides)\\.Rmd$",
                         full.names=TRUE,
                         recursive=FALSE)

# Correr archivos .Rmd en loop -------------------------------------------------
for(rmd in vec_slides){rmarkdown::render(rmd)}
