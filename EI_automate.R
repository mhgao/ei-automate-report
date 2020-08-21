library("sf")
library("dplyr")
library("eiPack")

library("ggplot2")
library("kableExtra")


####### USER INPUT #################

# user-defined title, title of all of the reports
title <- "Salem-Keizer School District"

# specify path to the shapefile
path <- "sk_precincts.shp"

# county we are examining. "ALL" to use all counties in the shapefile
county <- "ALL"

# column that holds total number of voters
vap <- "VAP"

# INDEPENDENT VARIABLE, demographic I am examining
my_dem <- c("BVAP", "HVAP", "ASIANVAP", "AMINVAP", "NHPIVAP", "OTHERVAP")

# names of the election we are examining
election_list <- c('GOV16', 'GOV18', 'SOS16', 'AG16')

# relevant parties in said elections
parties_list <- list(c('GOV16D', 'GOV16R', 'GOV16I', 'GOV16L'), c('GOV18D', 'GOV18R', 'GOV18I', 'GOV18L', "GOV18C"),
                     c("SOS16D", "SOS16R", "SOS16I", "SOS16G", "SOS16L"), c("AG16D", "AG16R"))

# DEPENDENT VARIABLE, campaign I am examining. 
# NOTE: must be in the list of parties given above
campaign_list <-  c('GOV16R', 'GOV18R', 'SOS16R', 'AG16R')


for (i in 1:length(election_list)) {
  
  election = election_list[i]
  parties = parties_list[[i]]
  campaign = campaign_list[i]
  
  rmarkdown::render("EI_parameterized.Rmd", output_file= paste0(county, election, ".html"), params = list(
    title = title,
    path = path,
    county = county,
    vap = vap,
    my_dem = my_dem,
    election = election,
    parties = parties,
    campaign = campaign
  ))
}