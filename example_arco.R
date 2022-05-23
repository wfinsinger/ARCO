

# Loads the ARCO_v1.r script into the R session:
source("./R/ARCO_v1.r")


## Load ARCO Toy data ##--------------------------------------------------------
seedle_arco <- read.csv("./data_in/arco_Seedle.csv")
smpl_arco <- read.csv("./data_in/arco_Smpl.csv")
fireA_arco <- read.csv("./data_in/arco_FireA.csv")
fireC_arco <- read.csv("./data_in/arco_FireC.csv")

# This command will let you run the ARCO_v1.r script using the example data
arco(Seedle.file = seedle_arco, Smpl.file = smpl_arco,
     FireA.file = fireA_arco, FireC.file = fireC_arco,
     breakage = T, ff_sm_yr = 1000, output.dir = "example_arcoanalysis_out")
