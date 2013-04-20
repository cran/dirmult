\name{rdirichlet}
\alias{rdirichlet}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Simulate from Dirichlet distribution}
\description{
  Simulates from a Dirichlet distribution
}
\usage{rdirichlet(n=1, alpha)}
\arguments{
  \item{n}{The number of samples.}
  \item{alpha}{The shape parameters, need to be positive.}
}
\value{
  Return an n x length(alpha) matrix where each row is drawn from a Dirichlet.
}
\seealso{
  \code{\link{dirmult}}
}
\examples{
  rdirichlet(n=100, alpha=rep(1,10))
}
