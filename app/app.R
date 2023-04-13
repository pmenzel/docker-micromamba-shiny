#!/usr/bin/env Rscript
library(shiny)

source("ui.R")
source("server.R")


options(shiny.host = '0.0.0.0')
options(shiny.port = 3838)

# Run Shiny app
runApp(".")

