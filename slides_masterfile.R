
# Limpiar environment ----------------------------------------------------------
rm(list=ls())

# Fijar directorio -------------------------------------------------------------
folder_project <- rprojroot::find_rstudio_root_file()
folder_here <- paste0(folder_project,"/slides")

# Cargar librerías -------------------------------------------------------------
library(tidyverse)
library(knitr)
library(rmarkdown)
library(xaringan)

# Crear vector de archivos .Rmd ------------------------------------------------
list.files(path=folder_here,
           pattern=)


rmarkdown::render("test.Rmd")

