
library(tidyverse)
library(extrafont)
library(ggplot2)
library(lubridate)
library(readr)
library(dplyr)
library(cowplot)
library(ggthemes)
library(gridExtra)
library(grid)
library(raster)
.libPaths("/Users/gunk1221/Documents/RLibrary")
source("/Users/gunk1221/Desktop/Graduate School Course Folders /NRES 800 - 001 Sampling and Data MGT & Visual/Lecture/gittutorial/R/Themes.R")
Fish %>% 
  mutate(length_cat=case_when(length>=200~"Big",length<200~"Small"))->Fish
head(Fish)

##Create a histogram of scale length, where the fill depends on length_cat, and a facet_wrap that is also by length_cat, using one of my themes
##Invite as collaborator

Fish %>% 
  ggplot()+geom_histogram(aes(x=scalelength,fill=length_cat))+facet_wrap(~length_cat,nrow=1)+labs(title="Fish",x="Scale Length",y="Count",legend="Size",color="black")+theme_GunkelPaper()

