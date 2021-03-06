% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/GParetoVaR.R
\name{GParetoVaR}
\alias{GParetoVaR}
\title{VaR for Generalized Pareto}
\usage{
GParetoVaR(Ra, beta, zeta, threshold.prob, cl)
}
\arguments{
\item{Ra}{Vector of daily Profit/Loss data}

\item{beta}{Assumed scale parameter}

\item{zeta}{Assumed tail index}

\item{threshold.prob}{Threshold probability corresponding to threshold u and
x}

\item{cl}{VaR confidence level}
}
\value{
Expected Shortfall
}
\description{
Estimates the Value at Risk of a portfolio assuming losses are
distributed as a generalised Pareto.
}
\examples{
# Computes ES assuming generalised Pareto for following parameters
   Ra <- 5 * rnorm(100)
   beta <- 1.2
   zeta <- 1.6
   threshold.prob <- .85
   cl <- .99
   GParetoVaR(Ra, beta, zeta, threshold.prob, cl)
}
\author{
Dinesh Acharya
}
\references{
Dowd, K. Measuring Market Risk, Wiley, 2007.

McNeil, A., Extreme value theory for risk managers. Mimeo, ETHZ, 1999.
}

