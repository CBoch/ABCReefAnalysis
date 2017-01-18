# Analysis of Alaska to Baja data
# Written by C. A. Boch, January 17, 2017

rm(list=ls())

########################################################################################################################
## Import relevant libraries and files

library(png)
library(xlsx)
library(zoo)
library(chron)
library(reshape2)
library(ggplot2)
require(grid)
library(gridExtra)
library(doBy)
library(tidyr)
library(agricolae) # for Least significant difference test (LSD.test)
library(lme4) # proportional response glmm analysis
library(MASS) # glm analysis; for stepAIC functionstep
library(glmm) # glmer analysis
library(gamlss) # this package has to be installed in Basic R first; for zero inflated proprotion data models
library(AICcmodavg) # for model comparisons
library(boot) # inv.logit function
library(data.table)

source("~/Dropbox/R_Scripts/StatSum.R") ## sourcing the summarSE script to calculate mean, se, and ci

########################################################################################################################
########################################################################################################################
ABCData <- read.csv("~/Dropbox/ABCReef/Data_Clean/All_programs_abc_data.csv", header=T) # ABC data from R Beas
