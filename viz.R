#this file contain the same code, but in R script instead of R notebook

# title: "US Disease Analysis"

#As submitted by 

# Raphael Griffo Duarte
# Mahmoud Ahmed Saad Hamed 
# 
# Marticulation number: 22111783 (Raphael)
# 12204926 (Mahmoud)
# 
# Email: raphael.griffo-duarte@stud.th-deg.de
# mahmoud.hamed@stud.th-deg.de


#import libraries
library(tidyr)
library(lubridate)
library(dplyr)
library(ggplot2)
library(ggridges)
library(dygraphs)
library(treemap)
library(xts)

#read dataset
df <- read.csv("Data/ProjectTycho_Level2_v1.1.0_0/ProjectTycho_Level2_v1.1.0.csv", header=TRUE, sep = ',')

#Convert date columns to date
df$from_date <- ymd(df$from_date)
df$to_date <- ymd(df$to_date)
