% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/KernelESNormalKernel.R
\name{KernelESNormalKernel}
\alias{KernelESNormalKernel}
\title{Calculates ES using normal kernel approach}
\usage{
KernelESNormalKernel(Ra, cl)
}
\arguments{
\item{Ra}{Profit and Loss data set}

\item{cl}{VaR confidence level}
}
\value{
Scalar VaR
}
\description{
The output consists of a scalar ES for specified confidence level.
}
\examples{
# ES for specified confidence level using normal kernel approach
   Ra <- rnorm(30)
   KernelESNormalKernel(Ra, .95)
}
\author{
Dinesh Acharya
}
\references{
Dowd, K. Measuring Market Risk, Wiley, 2007.
}

