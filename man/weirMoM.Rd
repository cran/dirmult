\name{weirMoM}
\alias{weirMoM}
\keyword{htest}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Method of moment estimator of theta}
\description{
  Estimates \eqn{\theta}{theta} using a method of moment (MoM) estimate
  by 'Weir and Hill (2002).'
}
\usage{weirMoM(data, se=FALSE)}
\arguments{
\item{data}{A matrix or table with counts. Rows represent subpopulations
  and columns the different categories of the data. Zero rows or columns
  are automaticly removed.}
\item{se}{Logical. Determines if a standard error of theta sould be
  computed or not. The variance is based on an expression by Li cited
  in 'Weir and Hill (2002)'.}
}
\references{
  Weir, B. S. and W. G. Hill (2002). 'Esimating F-statistics'. Annu Rev Genet 36: 721-750
  }
\value{
  MoM-estimate (and standard error) of theta.
}
\seealso{
  \code{\link{dirmult.summary}}
}
\examples{
data(us)
weirMoM(us[[1]],se=TRUE)
}

