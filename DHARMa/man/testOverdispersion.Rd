% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/testsResiduals.R
\name{testOverdispersion}
\alias{testOverdispersion}
\title{Test for over/underdispersion}
\usage{
testOverdispersion(simulationOutput, alternative = "overdispersion",
  plot = F)
}
\arguments{
\item{simulationOutput}{an object with simulated residuals created by \code{\link{simulateResiduals}}}

\item{alternative}{whether to test for "overdispersion", "underdispersion", or "both" (both reduces power)}

\item{plot}{whether to plot output}
}
\description{
This function performs a simulation-based test for over/underdispersion
}
\details{
The function implements two tests, depending on whether it is applied on a simulation with refit = F, or refit = T. 

If refit = F (not recommended), the function tests if the IQR of the scaled residuals deviate from the null hypothesis of a uniform distribution. Simulations show that this option is not properly calibrated and much less powerful than the parametric alternative \code{\link{testOverdispersionParametric}} and even the simple \code{\link{testUniformity}}, and therefore it's use is not recommended. A warning will be returned if the function is called. 

If refit = T, the function compares the approximate deviance (via squared pearson residuals) with the same quantity from the models refitted with simulated data. It is much slower than the parametric alternative \code{\link{testOverdispersionParametric}}, but simulations show that it is slightly more powerful than the latter, and more powerful than any other non-parametric test in DHARMa, and it doesn't make any parametric assumptions. However, given the computational cost, I would suggest that most users will be satisfied with the parametric overdispersion test.
}
\seealso{
\code{\link{testSimulatedResiduals}}, \code{\link{testSimulatedResiduals}}, \code{\link{testZeroInflation}}, \code{\link{testTemporalAutocorrelation}}, \code{\link{testSpatialAutocorrelation}}, \code{\link{testOverdispersionParametric}}
}
