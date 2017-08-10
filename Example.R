
# First set the working directory...the path should point to the directory where
# the 4 csv files and the ARCO_v1.r script are stored.
# For instance, on my laptop it looks like this:
setwd("/Users/wfinsing/Documents/GitHub/ARCO")

# Loads the ARCO_v1.r script into the R session:
source("ARCO_v1.r")

# This command will let you run the ARCO_v1.r script using the example *.csv files
arco(Seedle.file="Seedle_v2.csv", Smpl.file="Smpl.csv",
     FireA.file="FireA.csv", FireC.file="FireC.csv")
