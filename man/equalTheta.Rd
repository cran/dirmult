\name{equalTheta}
\alias{equalTheta}
\keyword{htest}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Test whether theta is equal for several tables}
\description{
  Estimates parameters \eqn{\pi}{\pi} for each table under the
  contraint that \eqn{\theta}{theta} is equal for all tables.
}
\usage{equalTheta(data, theta, epsilon=10^(-4), trace=TRUE, initPi, maxit=1000)}
\arguments{
\item{data}{A list of matrix or table with counts. Rows in the tables
  represent subpopulations and columns the different categories of the
  data. Zero columns are automaticly removed.}
\item{theta}{Initial value of the commen theta paramter.}
\item{epsilon}{Tolerance of the convergence, see \code{\link{dirmult}}.}
\item{trace}{Logical. TRUE: print estimates while iterating.}
\item{initPi}{Initial values for each pi vector (one of each table).}
\item{maxit}{Maximum number of iterations.}
}
\value{
  Returns a list similar to the output of \code{\link{dirmult}}.
}
\seealso{
  \code{\link{dirmult}}
}
\examples{
data(us)
fit <- lapply(us[1:2],dirmult,epsilon=10^(-12),trace=FALSE)
thetas <- unlist(lapply(fit,function(x) x$theta))
logliks <- unlist(lapply(fit,function(x) x$loglik))
fit1 <- equalTheta(us[c(1:2)],theta=mean(thetas),epsilon=10^(-12))
lr <- -2*(fit1$loglik-sum(logliks))
1-pchisq(lr,df=1)
fit1$theta[[1]]
}

