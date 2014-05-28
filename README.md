ARCO
====

Screening charcoal peaks in macrocharcoal-area records for fire-episode reconstructions
---
This R function screens charcoal peaks for charcoal-area records used to reconstruct past fire episodes with the CharAnalysis software, as described in Finsinger et al. (2014). 
 
For additional details, please refer to Finsinger et al. (2014), or contact: 
Walter Finsinger <walter.finsinger@univ-montp2.fr> or 
Ryan Kelly <rkelly@life.illinois.edu>. 
 
 
The R function requires five file path inputs (see below), as well as the following additional parameters: 
---
n.boot = number of bootstrap samples generated by the function to obtain a distribution of simulated charcoal-areas (default = 10,000) 
 
thresh.prob = pth percentile threshold used to separate significant charcoal-area peaks (default = 0.95) 

win.width = temporal span of the window from which bootstrap samples are generated. For each peak to be screened, particles are randomly drawn (with replacement) from all samples within a focal window, which is centered on the peak and has a full span of win.width (default = 1000).

breakage = if FALSE plots also C/CA-ratios in diagnostic plot (default = FALSE) 
 
----------------------------------------------------------------------------------------
Input files
--
The input datasets should be .csv files.
For each .csv, provide the full path to the file as the corresponding function argument. Details of the five files are below, and examples are included with this R code: 
 
A) RAW DATA
1. Seedle.csv = .csv table with charcoal-particle areas. Should have three columns and as many rows as the number of observations: 
 
Column 1: Depth = Depth of samples 
Column 2: SdlCounts = Number of charcoal particles in each sample 
Column 3: SdlArea = Charcoal-particle areas 
 
2. Smpl.csv = .csv table with charcoal counts and charcoal areas. Should have four columns and as many rows as the number of samples: 
 
Column 1: Depth = Depth of samples 
Column 2: Age_calBP = Age estimate of samples 
Column 3: SmplCount = Number of charcoal particles in each sample 
Column 4: SmplArea = Cumulative charcoal area in each sample 
 
B) FIRE-EPISODE RECONSTRUCTIONS. 
These are output files from the CharAnalysis program (Higuera et al. 2009), which is freely available (http://sites.google.com/site/charanalysis/). 
 
3. FireA.csv = CharAnalysis output table from analysis of CHARCOAL AREAS 
4. FireCsp.csv = CharAnalysis output table from analysis of CHARCOAL COUNTS and WITH minimum count test, i.e. with CharAnalysis parameter 'minCountP' < 1.0 (e.g. 0.05 as in Higuera et al. [2009]) 
4. FireC.csv = CharAnalysis output table from analysis of CHARCOAL COUNTS and WITHOUT minimum count test, i.e. with CharAnalysis parameter 'minCountP' = 1.0 
 
*** Note: CharAnalysis files must have columns in the expected order, specifically: 
 
Column 2: "age Top_i", the age at the top of the interpolated sample 
Column 8: "char Peak", the Cpeak component of CHAR 
Column 12: "thresh FinalPos", the threshold used for peak identification 
Column 19: "peaks Final", the boolean series representing identified peaks 
 
----------------------------------------------------------------------------------------
 
References: 
-
Finsinger, W., R. Kelly, J. Fevre, and E.K. Magyari. 2014. A guide to screening charcoal peaks in macrocharcoal-area records for fire episode reconstructions. The Holocene XX: XXXX. doi: 10.1177/0959683614534737 (http://dx.doi.org/10.1177/0959683614534737)
 
Higuera, P.E., L.B. Brubaker, P.M. Anderson, F.S. Hu, and T.A. Brown. 2009. Vegetation mediated the impacts of postglacial climate change on fire regimes in the south-central Brooks Range, Alaska. Ecological Monographs 79:201–219. http://dx.doi.org/10.1890/07-2019.1)
 
----------------------------------------------------------------------------------------
