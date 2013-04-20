\name{dirmult.summary}
\alias{dirmult.summary}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Summary table of parameter estimates from dirmult}
\description{
  Produces a summary table based on the estimated parameters from
  \code{\link{dirmult}}. The table contains MLE estimates and standard
  errors together with method of moment (MoM) estimates and standard
  errors based on MoM estimates from 'Weir and Hill (2002)'.
}
\usage{dirmult.summary(data, fit, expectedFIM=FALSE)}
\arguments{
\item{data}{A matrix or table with counts. Rows represent subpopulations
  and columns the different categories of the data. Zero rows or columns
  are automaticly removed.} 
\item{fit}{Output from \code{dirmult} used on the same data table as
  above.}
\item{expectedFIM}{Logical. Determines whether the observed or expected
  Fisher Information Matrix should be used. For speed use observed (i.e.
  FALSE) - for accuracy (and theoretical support) use expected (i.e. TRUE).}
}
\value{
  Summary table with estimates and standard errors for \eqn{\pi}{\pi}
  and \eqn{\theta}{theta}.
}
\seealso{
  \code{\link{dirmult}}
}
\examples{
data(us)
fit <- dirmult(us[[1]],epsilon=10^(-4),trace=FALSE)
dirmult.summary(us[[1]],fit)
}

