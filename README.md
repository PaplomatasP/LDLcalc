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

This R Package allows for a pre-trained model which is called **model**, as well a **sample data**, thus enabling the user to have a first experience with our  R package.
```
Arguments for the functions LDL_ML_Main, LDL_ML_Main_StackingAlgorithm, LDL_ML_Main_All_Models
DataCSV: 
The .csv or data table file, path containing the data with which the model will be
trained and assessed. Must contain at least 4 columns, named "CHOL", "HDL",
"TG" and "LDLd", through which the train data and the validation data will be extracted.
partition: A value in the range (0,1) that stipulates what percentage of the input data will
be used for training the model, while the remainder will be used to assess it.
ReportMultiPlot:
A boolean that allows the user to select whether the LDL_ML_Main function
will plot a diagram with 5 plots, relating different stats on the newly created
model. Preset to TRUE.
ComparisonPlot: 
A boolean that allows the user to select whether the LDL_ML_Main_All_Models
function will plot a comparison plot, relating different stats on the newly created
models. Preset to TRUE
```
```
LDL_ML_Main function creates, trains, assesses and returns an ML prediction model, with the option for a ``ReportMultiPlot``.  This is a diagram with 5 plots, relating different stats on the newly created model. Default to TRUE.\
Usage:
LDL_ML_Main(DataCSV, partition, MLmethod, ReportMultiPlot = TRUE)
Example:
model = LDL_ML_Main(SampleData,0.7,"lm",ReportMultiPlot=TRUE)
Results:
It initializes and returns the ML prediction model with a plot (see below) if Reportmultiplot=TRUE.
```
![Plot of the trained model which provided insightful information about the accuracy of it.](https://github.com/PaplomatasP/LDLcalc/blob/main/Paper/ModelPlot.png?raw=true)

```
LDL_ML_Main_StackingAlgorithm function creates, trains, assesses and returns a Stacking Algorithm Machine learning prediction model with the option for a ReportMultiPlot and ComparisonPlot. Default to TRUE.
Usage:
LDL_ML_Main_StackingAlgorithm(
DataCSV,
partition,
ReportMultiPlot = TRUE,
ComparisonPlot = TRUE
) 
Example:
stackModel = LDL_ML_Main_StackingAlgorithm(SampleData,0.8,ReportMultiPlot=TRUE,ComparisonPlot=TRUE)
Results:
It initializes and returns the stacked algorithm prediction model with two avalaible plots(see below):
````
![Plot of the trained model which provided insightful information about the accuracy of it.](https://github.com/PaplomatasP/LDLcalc/blob/main/Paper/ReportMultiPlotStack.png?raw=true)
![ComparisonPLot](https://github.com/PaplomatasP/LDLcalc/blob/main/Paper/ComparisonPlotStack.png)


It initializes and returns the stacked algorithm prediction model w
LDL_ML_Main_All_Models function creates, trains, assessess and returns  all ML prediction models with the option for a ``ReportMultiPlot`` and ``ComparisonPlot``.\
Usage:
LDL_ML_Main_All_Models(
DataCSV,
partition,
ReportMultiPlot = TRUE,
ComparisonPlot = TRUE
)

LDL_ML_predict function predicts and returns the estimated LDL Value, based on the previously trained model.\
Usage:
LDL_ML_predict(model, data)

LDL_eq function calculates and returns the LDL Value for any of the 12 equations.\
Usage:
LDL_eq(TC, HDL, TG, EqMethod)

LDLallEq function calculates and returns the LDL values calculated with all of the 12 named equations.\
Usage:
LDLallEq(TC, HDL, TG)

Corr_Plot function plots a correlation plot to depict the correlation between different columns of your data.\
Usage:
Corr_Plot(listDaten)


LDL_ML_Main LDL_ML_Main

LDL_eq Calculates and returns the LDL Value for any of the 12 different equations

Description:
This function calculates and returns the LDL value computed from any of the 12 named equations.

Usage:
LDL_eq(TC, HDL, TG, EqMethod)

Examples:
LDL_eq(170.5,35.12,230,"Martin360")

``LDLallEq`` Calculates and returns the LDL values using all available equation
Description:
This function calculates and returns the LDL values computed with all of the 12 named equations.

Usage:
LDLallEq(TC, HDL, TG)

Examples
LDLallEq(170,35,174)

Arguments for LDL_eq & LDLallEq  :

TC: The TC (Total Cholesterol) value.
HDL: The HDL (High-density lipoprotein- cholesterol) value.
TG: The TG (Triglyceride) value.
EqMethod: The type of equation to be used to calculate the LDL value.The type of equation to be used to calculate the LDL value. EqMethod could be ("Friedewald","Ahmadi","Chen","Anandaraja","NewFormula","deCordova","Vujovic","Hattori","Puavillai","Hatta","Martin180","Martin360","Martin2000","DeLong" or "Rao")
```

A full documentation is available here: [Reference manual](https://cran.r-project.org/web/packages/LDLcalc/LDLcalc.pdf).

Installation and examples are available either on [Reference manual](https://cran.r-project.org/web/packages/LDLcalc/LDLcalc.pdf) or on [LDLcalctutorial](https://sciencesandresearch.com/wp-content/uploads/2021/10/LDLcalcTutorial-1.pdf).

Feel free to contact us for any issue or question about our package at [Petros Paplomatas](mailto:p.paplomatas@hotmail.com) or [Kostas Anagnostopoulos](mailto:kanagno@gmail.com).
