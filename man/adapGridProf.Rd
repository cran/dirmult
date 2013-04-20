\name{adapGridProf}
\alias{adapGridProf}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Profile log-likelihood of Dirichlet-multinomial model}
\description{
  Computes the profile log-likelihood of \eqn{\ell(\pi,\theta;x)}{l(\pi,theta;x)}
  for an interval determined by a given difference in log-likelihood
  value from the maximum log-likelihood value.
}
\usage{adapGridProf(data, delta, stepsize=50)}
\arguments{
\item{data}{A matrix or table with counts. Rows represent subpopulations
  and columns the different categories of the data. Zero rows or columns
  are automaticly removed.} 
\item{delta}{The difference between max of log-likelihood and the
  profile log-likelihood. May be used to construct approximate
  confidence intervals, e.g. with delta = qchisq(0.95,df=1)*2.}
\item{stepsize}{The stepsize used when stepping left/right of the
  MLE. The stepsize used by the algorithm is given by the MLE of theta
  divided by \code{stepsize}. Default value is 50.}
}
\value{
  Gives a data frame with theta values and associated profile
  log-likelihood values.
}
\seealso{
  \code{\link{estProfLogLik}}
}
\examples{
data(us)
fit <- dirmult(us[[1]],epsilon=10^(-12),trace=FALSE)
adapGridProf(us[[1]],delta=0.5)
\dontrun{adapGridProf(us[[1]],delta=qchisq(0.95,df=1)*2)}
}
