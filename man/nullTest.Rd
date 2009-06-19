\name{nullTest}
\alias{nullTest}
\keyword{htest}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Simulation based test for null-hypothesis, H0:theta=0}
\description{
  Simulates data sets under the null-hypothesis,
  \eqn{H_0:\theta=0}{H_0: theta=0}. This corresponds to an ordinary multinomial
  model without any overdispersion. Based on the returned data frame
  simulated \eqn{p}{p}-values may be computed.
}
\usage{nullTest(data, m=1000, prec=6)}
\arguments{
\item{data}{A matrix or table with counts. Rows represent subpopulations
  and columns the different categories of the data. Zero rows or columns
  are automaticly removed.}
\item{m}{Number of simulated data tables.}
\item{prec}{The tolerance of the iterations. Corresponds to
  epsilon=1e-prec in \code{\link{dirmult}}.}
}
\value{
  Returns a data frame with theta estimates and log-likelihood values.
}
\seealso{
  \code{\link{dirmult}}
}
\examples{
data(us)
nullTest(us[[1]],m=50)
}
