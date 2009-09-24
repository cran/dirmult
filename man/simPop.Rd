\name{simPop}
\alias{simPop}
\keyword{htest}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Simulate data from Dirichlet-multinomial distribution}
\description{
  Simulates data using user defined \eqn{\theta}{theta} value and allele
  probabilities in the reference population, \eqn{\pi}{pi}.
}
\usage{simPop(J=10, K=20, n, pi, theta)}
\arguments{
  \item{J}{The number of subpopulations sampled.}
  \item{K}{Number of different alleles. If argument \code{pi} is given,
    the length of \code{pi} is used as \code{K}.}
  \item{n}{The number of alleles sampled in each subpopulation. If
    scalar repeated for all subpopulations, otherwise a vector of length
    \code{J} is needed with subpopulation specific total sampled
    alleles.} 
  \item{pi}{Vector of allele probabilities. If missing a random vector
    of length \code{K} is generated.}
  \item{theta}{The theta-value used for simulations.}
}
\value{
  Return an J x K matrix with allelic counts.
}
\seealso{
  \code{\link{dirmult}}
}
\examples{
  simPop(n=100, theta=0.03)
}
