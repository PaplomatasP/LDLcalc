# Introduction

[LDLcalc](https://cran.r-project.org/web/packages/LDLcalc/index.html) is an R package for calculation and prediction of LDL Cholesterol through 12 different equations and 10 different machine learning methods, quickly, easy and economically.

A list of dependencies to install are : data.table, caret, caretEnsemble, lares, corrplot,RColorBrewer, lattice, resample, glmnet, earth, kernlab, gbm,Cubist, randomForest

[Testdata-Script](https://github.com/PaplomatasP/LDLcalculation/tree/main/LDLcalc/tests)

# Statement of need

Currently, there is no R software package available for the calculation and prediction of Low Density Lipoprotein Cholesterol (LDL) values either through equations or machine learning methods. LDL is implicated in many prevalent health problems, such as cardiovascular diseases. The accurate determination of LDL is of high cost and with technical difficulties (ultracentrifugation). The ``LDLcalc`` package offers a wide variety of ways to calculate or predict the LDL values of patients based on the values of three other metrics, that is Total Cholesterol (CHOL), Triglycerides (TG) and High Density Lipoproteins (HDL).

# Installation Guides

1. Download and install:

    - R (https://www.r-project.org/)
    - R studio (https://www.rstudio.com/)

2. Open R studio:

```
install.packages("LDLcalc")
```
# How-to Guides

After the Installation you can see packages function :
``` 
library(LDLcalc)
ls("package:LDLcalc")
[1] "Corr_Plot" 
[2]"LDL_eq" 
[3] "LDL_ML_Main" 
[4]"LDL_ML_Main_All_Models" 
[5] "LDL_ML_Main_StackingAlgorithm" 
[6]"LDL_ML_predict" 
[7] "LDLallEq" "model" 
[9] "SampleData
```
**Usage and Example**
``LDL_eq`` Calculates and returns the LDL Value for any of the 12 different equations
**Description:**
This function calculates and returns the LDL value computed from any of the 12 named equations.
**Usage:**
LDL_eq(TC, HDL, TG, EqMethod)
**Arguments:**
**TC:** The TC (Total Cholesterol) value.
**HDL:** The HDL (High-density lipoprotein- cholesterol) value.
**TG:** The TG (Triglyceride) value.
**EqMethod:** The type of equation to be used to calculate the LDL value.The type of equation to be used to calculate the LDL value. EqMethod could be ("Friedewald","Ahmadi","Chen","Anandaraja","NewFormula","deCordova","Vujovic","Hattori","Puavillai","Hatta","Martin180","Martin360","Martin2000","DeLong" or "Rao")

A full documentation is available here: [Reference manual](https://cran.r-project.org/web/packages/LDLcalc/LDLcalc.pdf).

Installation and examples are available either on [Reference manual](https://cran.r-project.org/web/packages/LDLcalc/LDLcalc.pdf) or on [LDLcalctutorial](https://sciencesandresearch.com/wp-content/uploads/2021/10/LDLcalcTutorial-1.pdf).

Feel free to contact us for any issue or question about our package at [Petros Paplomatas](mailto:p.paplomatas@hotmail.com) or [Kostas Anagnostopoulos](mailto:kanagno@gmail.com).
