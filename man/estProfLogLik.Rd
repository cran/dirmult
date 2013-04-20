\name{estProfLogLik}
\alias{estProfLogLik}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Profile log-likelihood of Dirichlet-multinomial model}
\description{
  Computes the profile log-likelihood of \eqn{\ell(\pi,\theta;x)}{l(\pi,theta;x)}
  for a given value of \eqn{\theta}{theta},
  i.e. \eqn{\hat{\ell}(\theta)=\max_{\pi}\ell(\pi,\theta;x)}{l(theta)=max_{\pi}
    l(\pi,theta;x)}.
}
\usage{
estProfLogLik(data, theta, epsilon=10^(-4), trace=TRUE, initPi, maxit=1000)
}
\arguments{
\item{data}{A matrix or table with counts. Rows represent subpopulations
  and columns the different categories of the data. Zero rows or columns
  are automaticly removed.} 
\item{theta}{The theta-value of which the profile log-likelihood is to
  be computed.}
\item{epsilon}{Tolerance used in the iterations. Succeeding
  log-likelihood values need to be within epsilon for convergence.}
\item{trace}{Logical. Whether parameter estimates and log-likelihood
  values should be printed to the screen while iterating.}
\item{initPi}{Initial pi vector.}
\item{maxit}{Maximum number of iterations. Default is 1000 and will
  often not be envoked, but if theta is to extreme compared to the MLE
  of theta the log-likelihood may misbehave near theta.}
}
\value{
  Gives a list of components (similar to output from
  \code{\link{dirmult}} where \code{loglik} and \code{lambda} (the
  Lagrange multiplier) are the most interesting.
}
\seealso{
  \code{\link{dirmult}}
}
\examples{
data(us)
fit <- dirmult(us[[1]],epsilon=10^(-12),trace=FALSE)
estProfLogLik(us[[1]],fit$theta*1.2,epsilon=10^(-12),trace=FALSE)
}
