---
title: 'LDLcacl: Calculate and Predict the Low Density Lipoprotein Values'
author:
- name: Petros Paplomatas^[First author]
  affiliation: 1
- name: Kostas Anagnostopoulos^[First author]
  affiliation: 2
date: 17 October 2021
output:
     pdf_document:
       latex_engine: xelatex
affiliation:
- name: Democrat University of Thrace 
  index: 1
bibliography: paper.bib
tags:
- R
- Biochemistry
- Cholesterol
- Machine learning
- Prediction
---



# Summary

As defined both in the European Society of Cardiology/European Atherosclerosis Society 2019 (ESC), as well as the American National Cholesterol Education Program III (NCEP) guidelines, LDL (Low density lipoprotein cholesterol) is a critical risk factor for atherosclerotic vascular disease or cardiovascular disease (CVD). In the laboratory the ideal method to calculate LDL is through ultracentrifugation but it is not possible to be applied. Another Method is to compute the LDL in direct way by utilizing enzymatic assays but it seems to appears two disadvantages, the high cost and the lack of credibility among manufacturers. For the above reasons many Laboratories choose the third option, to calculate the LDL through equations. The Friedewald equation is the most adopted, which calculate LDL as LDL = CHOL - HDL - (TG/5) but has a good approximation when LDL<400 mg/dl (4.52 mmol/L). Another equation is that, of Martin, which calculate LDL utilizing classification tables of different sizes according to the concentration of non HDL cholesterol and TG creating an adjustable novel factor for more accurate results. 
Machine learning (ML) methods have increasing use in medical sector, such methods could be used for the estimation of LDL Cholesterol. Machine learning can offers very good results if a big data set is used for the training of the model. 
This R package offers a wide variety of ways to calculate (through equations) or predict (using 9 Machine learning methods as well as a stack algorithm combination of them all) the Low Density Lipoprotein values of patients based on the values of three other metrics as Total Cholesterol, Triglyceride and High Density Lipoprotein.
To assess LDLcalc in R we have created the package LDLcalc related on it and in that is available on  [Cran](https://cran.r-project.org/web/packages/LDLcalc/index.html) and  [Github](https://github.com/PaplomatasP/LDLcalculation/tree/main/LDLcalc).

# Statement of need

Cholesterol, and in particular LDL cholesterol, is responsible for many important diseases such as coronary artery disease, peripheral artery disease, and heart disease. In todays’ modern society, this phenomenon has become a large issue for the health of adults and children, mainly due to diet.
With this package the goal is achieved, which was to create an opportunity for everyone to calculate the low density lipoprotein (LDL) through different equations and machine learning models. Further, they all ensured reliability, speed, and economy.
When the direct determination of LDL Cholesterol is not available  ML methods can be very good subtitute.


# Examples

To install LDLcalc use :


install.packages("LDLcalc")

***Calculate LDL using equation.***

# Calculate the LDL Cholesterol through the equation of Martin

*LDL_eq(170.5,35.12,175,"Martin360")*

#>[1] 106



***Train a model with the chosen method.***


# Test single ML model

model = LDL_ML_Main(SampleData,0.7,"lm",ReportMultiPlot=TRUE)

![Plot of the trained model which provided insightful information about the accuracy of it.](C:/Users/ppapl/Documents/MEGA/LDLcalcPaper/Paper/ModelPlot.png)





***Prediction of the above model.*** 

LDL_ML_predict(model,data.table(CHOL=170.5,HDL=35.12,TG=175))

#>107.5539 




More examples and functions can be found in the [vignette](https://sciencesandresearch.com/wp-content/uploads/2021/10/LDLcalcTutorial-1.pdf) of the package.



# References

---
nocite: '@*'
...