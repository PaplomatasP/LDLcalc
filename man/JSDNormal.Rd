% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Jensen-Shannon.R
\name{JSDNormal}
\alias{JSDNormal}
\title{Calculate the Jensen-Shannon divergence (JSD) between a discrete
empirical distribution and the normal distribution.}
\usage{
JSDNormal(dfSmpl, param)
}
\arguments{
\item{dfSmpl}{A data frame containing the values of the discrete distribution.
The data frame may contain more that one column with discrete distribution
values. The argument "param" specified next will determine which column
will be used}

\item{param}{The name of the column to be used.}
}
\value{
The function returns the Jensen-Shannon divergence between the
discrete and corresponding normal distribution. It also returns a data frame
with the empirical probability of the values supplied in the column
as well as the empirical probabilies one of the normal discrete distribution.
distribution.
}
\description{
Calculates the Jensen-Shannon divergence between a discrete
distribution and the corresponding normal distribution with mean and standard
deviation the same as these of the discrete one.
}
\examples{
\dontrun{
JSD.between.empirical.Normal =JSDNormal(sampleA,"LDL")
}
}
\references{
D.M. Endres, J.E. Schindelin, A new metric for probability distributions, IEEE
Trans. Inf. Theory (2003), https://doi.org/10.1109/TIT.2003.813506.

F. Oesterreicher, I. Vajda, A new class of metric divergences on probability spaces
and its applicability in statistics, Ann. Inst. Stat. Math. (2003), https://doi.org/
10.1007/BF02517812.
}
