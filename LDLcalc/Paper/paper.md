---
title: '`LDLcalc`: A R package for the calculation and prediction of Low Density Lipoprotein Values'
tags:
- R
- Biochemistry
- Cholesterol
- Machine learning
- Prediction
- LDL
authors:
- name: Petros Paplomatas^[First author]
  affiliation: 1
- name: Kostas Anagnostopoulos^[Last author]
  affiliation: 1
affiliations:
- name: Laboratory of Biochemistry, Department of Medicine, Democritus University of Thrace, Alexandroupolis, Greece
  index: 1
date: "19 October 2021"
bibliography: paper.bib
---



# Summary

As defined both in the European Society of Cardiology/European Atherosclerosis Society 2019 (ESC), as well as the American National Cholesterol Education Program III (NCEP) guidelines, LDL (Low density lipoprotein cholesterol) is a critical risk factor for atherosclerotic vascular disease or cardiovascular disease (CVD). In the laboratory the ideal method to calculate LDL is through ultracentrifugation but this is not feasible for routine laboratory deployment. Another method is to determine LDL directly by utilising enzymatic assays. This has two disadvantages: high cost and lack of standardisation among manufacturers. For the above reasons many laboratories choose the third option, to calculate the LDL through equations. The Friedewald equation (Friedewald et al., 1972), is the most widely adopted, which calculates LDL as $LDL = CHOL - HDL - (TG/5)$, with good approximation when LDL<400 mg/dl (4.52 mmol/L). Another equation is that of Martin (Martin et al., 2013),which calculates LDL utilising classification tables of different sizes according to the concentration of non HDL cholesterol and TG creating an adjustable novel factor for more accurate results.
Machine learning (ML) methods have been increasingly used in the medical sector. Such methods could be used for the estimation of LDL Cholesterol. Machine learning can offer good results if a big data set is used for training of the model.
This R package offers a wide variety of ways to calculate (through equations) or train ML models (using 9 Machine learning methods as well as a stack algorithm combination of them all) and then use them to estimate Low Density Lipoprotein values of patients based on the values of three other metrics (Total Cholesterol , Triglyceride and High Density Lipoprotein).
To assess ``LDLcalc`` in R we have created the package LDLcalc that is available on  [Cran](https://cran.r-project.org/web/packages/LDLcalc/index.html) and  [GitHub](https://github.com/PaplomatasP/LDLcalculation/tree/main/LDLcalc).

# Statement of need

Cholesterol, and in particular LDL cholesterol, is responsible for many important diseases such as coronary artery disease, peripheral artery disease, and heart disease. In today`s modern society, this phenomenon has become a large issue for the health of adults and children, mainly due to diet.
When not determined directly, either through ultracentrifugation or enzymatic methods, LDL can be calculated using equations. It this package, several equations have been implemented. (Atabi and Mohammadi, 2020),(Karkhaneh et al., 2019),(Molavi et al., 2020)
With this package the low density lipoprotein (LDL) can be estimated from total cholesterol, HDL and triglycerides either using the above equations or machine learning models. When the direct determination of LDL Cholesterol is not available, equations or ML methods can be very good substitute.  

\pagebreak

# Function and Usage

This R Package allows for a pre-trained model which is called **model**, as well a **sample data** , thus enabling the user to have a first experience with our  R package.

**LDL_ML_Main** function creates, trains, assesses and returns an ML prediction model, with the option for a ``ReportMultiPlot``.  This is a diagram with 5 plots, relating different stats on the newly created model. Preset to TRUE.\
**Usage:**\
LDL_ML_Main(DataCSV, partition, MLmethod, ReportMultiPlot = TRUE)

**LDL_ML_Main_StackingAlgorithm** function creates, trains, assesses and returns a Stacking Algorithm Machine learning prediction model with the option for a ``ReportMultiPlot`` and ``ComparisonPlot``. Preset to TRUE.\
**Usage:**\
LDL_ML_Main_StackingAlgorithm(
DataCSV,
partition,
ReportMultiPlot = TRUE,
ComparisonPlot = TRUE
) 

**LDL_ML_Main_All_Models** function creates, trains, assessess and returns  all ML prediction models with the option for a ``ReportMultiPlot`` and ``ComparisonPlot``.\
**Usage:**\
LDL_ML_Main_All_Models(
DataCSV,
partition,
ReportMultiPlot = TRUE,
ComparisonPlot = TRUE
)

**LDL_ML_predict** function predicts and returns prognosis, based on the previously trained model.\
**Usage:**\
LDL_ML_predict(model, data)

**LDL_eq** function calculates and returns the LDL Value for any of the 12 different equations\
**Usage:**\
LDL_eq(TC, HDL, TG, EqMethod)

**LDLallEq** function calculates and returns the LDL values computed with all of the 12 named equations.\
**Usage:**\
LDLallEq(TC, HDL, TG)

**Corr_Plot** function plots a correlation plot to depict the correlation between different columns of your data.\
**Usage:**\
Corr_Plot(listDaten)



\pagebreak


# Examples  

To install ``LDLcalc`` use :

```diff
! install.packages("LDLcalc")
```


***Calculate LDL using equations.***


#> Calculate the LDL Cholesterol through the equation of Martin

```diff
! LDL_eq(170.5,35.12,175,"Martin360")

#> [1] 106
```


***Train a model with the chosen method.***


#> Train single ML model with the lm method.
```diff
! model = LDL_ML_Main(SampleData,0.7,"lm",ReportMultiPlot=TRUE)
```

![Plot of the trained model which provided insightful information about the accuracy of it.](https://github.com/PaplomatasP/LDLcalculation/blob/main/LDLcalc/Paper/ModelPlot.png?raw=true)



***Prediction using the above model.***

```diff
! LDL_ML_predict(model,data.table(CHOL=170.5,HDL=35.12,TG=175))

#> 107.5539
```



More examples and functions can be found in the [vignette](https://sciencesandresearch.com/wp-content/uploads/2021/10/LDLcalcTutorial-1.pdf) of the package.


\pagebreak

# References

---
nocite: '@*'
...
