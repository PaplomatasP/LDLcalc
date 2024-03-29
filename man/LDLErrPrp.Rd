% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LDLErrorPropagation&bootstrapVariance.R
\name{LDLErrPrp}
\alias{LDLErrPrp}
\title{Calculate LDL variance using error propagation}
\usage{
LDLErrPrp(CHOL, HDL, TG, divFactor = 5)
}
\arguments{
\item{CHOL}{A vector containing the cholesterol values to be used for LDL calculation.}

\item{HDL}{A vector containing the HDL values to be used for LDL calculation.}

\item{TG}{A vector containing the triglyceride values to be used for LDL calculation.}

\item{divFactor}{The factor by which to divide the triglyceride values
so as to approximate the VLDL. Default is 5, according to the Friedewald
equation.}
}
\value{
The function returns the error propagation variance of LDL calculated
from the cholesterol, HDL and tryglyceride values passed as arguments.
}
\description{
Function to calculate the LDL Variance according to error propagation (delta) method.
}
\examples{
\dontrun{
LDLerrorPrp = LDLErrPrp(sampleA$CHOL, sampleA$HDL, sampleA$TG)
}
}
\references{
Casella G, Berger RL. Statistical Inference. 2nd ed. Duxbury Thomson Learning; 2002.
}
