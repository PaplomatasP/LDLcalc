---
title: 'LDLcalc: Calculate and Predict Low Density Lipoprotein Values'
author:
- affiliation: 1
  name: Petros Paplomatas^[First author]
- affiliation: 1
  name: Kostas Anagnostopoulos^[Last author]
date: "17 October 2021"
affiliation:
- index: 1
  name: Laboratory of Biochemistry, Department of Medicine, Democritus University of Thrace, Alexandroupolis, Greece
output: rticles::joss_article
bibliography: paper.bib
tags:
- R
- Biochemistry
- Cholesterol
- Machine learning
- Prediction
- LDL
csl: apa.csl
journal: JOSS
link-citations: yes
---



# Summary

As defined both in the European Society of Cardiology/European Atherosclerosis Society 2019 (ESC), as well as the American National Cholesterol Education Program III (NCEP) guidelines, LDL (Low density lipoprotein cholesterol) is a critical risk factor for atherosclerotic vascular disease or cardiovascular disease (CVD). In the laboratory the ideal method to calculate LDL is through ultracentrifugation but this is not feasible for routine laboratory deployment. Another method is to determine LDL directly by utilising enzymatic assays. This has two disadvantages: the high cost and the lack of standardisation among manufacturers. For the above reasons many laboratories choose the third option, to calculate the LDL through equations. The Friedewald equation (Fukuyama et al., 2008) is the most widely adopted, which calculates LDL as $LDL = CHOL - HDL - (TG/5)$, with good approximation when LDL<400 mg/dl (4.52 mmol/L). Another equation is that of Martin (Cartier et al., 2020), which calculates LDL utilising classification tables of different sizes according to the concentration of non HDL cholesterol and TG creating an adjustable novel factor for more accurate results.
Machine learning (ML) methods have been increasingly used in the medical sector. Such methods could be used for the estimation of LDL Cholesterol. Machine learning can offer good results if a big data set is used for training of the model.
This R package offers a wide variety of ways to calculate (through equations) or predict (using 9 Machine learning methods as well as a stack algorithm combination of them all) the Low Density Lipoprotein values of patients based on the values of three other metrics as Total Cholesterol , Triglyceride and High Density Lipoprotein.
To assess LDLcalc in R we have created the package LDLcalc that is available on  [Cran](https://cran.r-project.org/web/packages/LDLcalc/index.html) and  [Github](https://github.com/PaplomatasP/LDLcalculation/tree/main/LDLcalc).

# Statement of need

Cholesterol, and in particular LDL cholesterol, is responsible for many important diseases such as coronary artery disease, peripheral artery disease, and heart disease. In today`s modern society, this phenomenon has become a large issue for the health of adults and children, mainly due to diet.
When not determined directly, either through ultracentrifugation or enzymatic methods, LDL can be calculated using equations. It this package, several equations have been implemented. (Atabi and Mohammadi, 2020),(Karkhaneh et al., 2019),(Molavi et al., 2020)
With this package the low density lipoprotein (LDL) can be estimated from total cholesterol, HDL and triglycerides either using the above equations or machine learning models. When the direct determination of LDL Cholesterol is not available, equations or ML methods can be very good substitute.  


\pagebreak



# Examples  

To install LDLcalc use :

```diff

! install.packages("LDLcalc")
```


***Calculate LDL using equations.***


#Calculate the LDL Cholesterol through the equation of Martin

```diff
! LDL_eq(170.5,35.12,175,"Martin360")

#> [1] 106
```


***Train a model with the chosen method.***


#Train single ML model
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
