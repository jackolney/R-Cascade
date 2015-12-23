## "Evaluating Strategies to Improve HIV Care Outcomes in Kenya"
#### R Package [![Build Status](https://travis-ci.org/jackolney/R-Cascade.svg)](https://travis-ci.org/jackolney/R-Cascade)

This repository contains an R package with the source code from the "[CareCascade](https://github.com/olneyjack/CareCascade)" repository.

To install, download the latest version of [R](https://www.r-project.org/):
```R
# Install devtools from CRAN
install.packages("devtools")

# Install this R package from github
devtools::install_github("jackolney/R-Cascade")

# Load the package
require(CareCascade)

# Run the model
Cascade(
     s_pop = 1000,
     s_Hbct = 0,
     s_Vct = 0,
     s_HbctPocCd4 = 0,
     s_Linkage = 0,
     s_VctPocCd4 = 0,
     s_PreOutreach = 0,
     s_ImprovedCare = 0,
     s_PocCd4 = 0,
     s_ArtOutreach = 0,
     s_Adherence = 0,
     s_ImmediateArt = 0,
     s_UniversalTestAndTreat = 0,
     s_Calibration = 0)
```
See `help(Cascade)` for further details.