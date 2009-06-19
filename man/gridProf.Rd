\name{gridProf}
\alias{gridProf}
\keyword{htest}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Profile log-likelihood of Dirichlet-multinomial model}
\description{
  Computes the profile log-likelihood of \eqn{\ell(\pi,\theta;x)}{l(\pi,theta;x)}
  for a given sequence of \eqn{\theta}{theta} by calling
  \code{\link{estProfLogLik}}. 
}
\usage{gridProf(data, theta, from, to, len)}
\arguments{
\item{data}{A matrix or table with counts. Rows represent subpopulations
  and columns the different categories of the data. Zero rows or columns
  are automaticly removed.} 
\item{theta}{A theta-value used as offset for the interval: [theta+from; theta+to].}
\item{from}{Left endpoint in the interval: [theta+from; theta+to].}
\item{to}{Right endpoint in the interval: [theta+from; theta+to].}
\item{len}{Number of points in the [from; to] interval. Similar to the
  \code{len} argument in \code{\link{seq}}.}
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
grid <- gridProf(us[[1]],fit$theta,from=-0.001,to=0.001,len=10)
plot(loglik ~ theta, data=grid, type="l")
}

