#fishData <- read.csv("Path")
library(tidyverse)
.libPaths("/Users/gunk1221/Documents/RLibrary")
source("/Users/gunk1221/Desktop/Graduate School Course Folders /NRES 800 - 001 Sampling and Data MGT & Visual/Lecture/gittutorial/R/Themes.R")
Fish %>% 
  mutate(length_cat=case_when(length>=300~"Big",length<300~"Small"))->Fish
head(Fish)
