\name{dirmult}
\alias{dirmult}
\keyword{htest}
\concept{Genetics}
\concept{Overdispersion}
\concept{Dirichlet-multinomial}
\title{Parameter estimation in Dirichlet-multinomial distribution}
\description{Consider allele frequencies from different
  subpopulations. The allele counts, \eqn{X}{X}, (or equivalently
  allele frequencies) are expected to vary between subpopulation. This
  variability are sometimes refered to as identity-by-decent, but may be
  modelled as overdispersion due to intra-class correlation
  \eqn{\theta}{theta}. The allele counts within each subpopulation is 
  assumed to follow a multinomial distribution conditioned on the allele
  probabilities, \eqn{\pi_1,\dots,\pi_{k-1}}{\pi_1,...,\pi_{k-1}}. When
  \eqn{\pi}{\pi} follows a Dirichlet distribution the marginal
  distribution of \eqn{X}{X} is Dirichlet-multinomial with parameters
  \eqn{\pi}{\pi} and \eqn{\theta}{theta} with density:
  \deqn{%
    P(X=x) = {n \choose x}
    \frac{\prod_{j=1}^k\prod_{r=1}^{x_j}\{\pi_j(1-\theta) + (r-1)\theta\}}%
    {\prod_{r=1}^{n}\{1-\theta + (r-1)\theta\}}.}{%
    P(X=x) = (prod_{j=1}^k (1/x_j!) prod_{r=1}^{x_j}(\pi_j(1-theta) + (r-1)theta))/%
    ((1/n!) prod_{r=1}^{n}(1-\theta + (r-1)theta)).}
  Using an alternative parameterization the density may be written as:
  \deqn{%
    P(X=x) =
    {n \choose x}
    \frac{\Gamma(\gamma_+)}{\Gamma(n+\gamma_+)}
    \prod_{j=1}^k \frac{\Gamma\left(x_j + \gamma_j\right)}%
    {\Gamma\left(\gamma_j\right)},}{
    P(X=x) = (n!*\Gamma(gamma_+))/\Gamma(n+gamma_+)
    prod_{j=1}^k \Gamma(x_j + gamma_j)/(\Gamma(gamma_j)*x_j!),}
  where \eqn{\gamma_+=(1-\theta)/\theta}{gamma_+=(1-theta)/theta} and
  \eqn{\gamma_j=\pi_j\theta}{gamma_j=\pi_j*theta}.

  This formulation second parameterization is used in the iterations
  since it converges much faster than the original parameterization.   
  The function \code{dirmult} estimates the parameters 
  \eqn{\gamma}{gamma} in the Dirichlet-multinomial distribution and
  transform these into
  \eqn{\pi_1,\dots,\pi_{k-1}}{\pi_1,\dots,\pi_{k-1}} and 
  \eqn{\theta}{theta}.
}
\usage{dirmult(data, init, initscalar=30, epsilon=10^(-4), trace=TRUE, mode)}
\arguments{
\item{data}{A matrix or table with counts. Rows represent subpopulations
  and columns the different categories of the data. Zero rows or columns
  are automaticly removed.} 
\item{init}{Initial values for the \eqn{\gamma}{gamma}-vector. Default
  is empty implying the column-proportions are used as initial values.}
\item{initscalar}{Initial value for \eqn{\theta}{theta}. Default value
  is 30 which approximately corresponds to a \eqn{\theta}{theta} value
  of 0.03 which is commonly assumed in genetics.}
\item{epsilon}{Convergence tolerance. On termination the difference
  between to succeeding log-likelihoods must be smaller than
  epsilon.}
\item{trace}{Logical. If TRUE the parameter estimates and log-likelihood
  value is printed to the screen after each iteration, otherwise no
  out-put is produces while iterating.}
\item{mode}{Takes values "obs" (default) or "exp" determining whether
  the observed or expected FIM should be used in the Fisher Scoring. All
  other arguments produces an error message, but the observed FIM is
  used in the iterations.}
}
\value{
  Returns a list containing:
  \item{loglik}{The final log-likelihood value.}
  \item{ite}{Number of iterations used.}
  \item{gamma}{A vector of \eqn{\gamma}{gamma} estimates.}
  \item{pi}{A vector of \eqn{\pi}{\pi} estimates.}
  \item{theta}{Estimated \eqn{\theta}{theta}-value.}
}
\seealso{
  \code{\link{dirmult.summary}}
}
\examples{
data(us)
fit <- dirmult(us[[1]],epsilon=10^(-12),trace=FALSE)
dirmult.summary(us[[1]],fit)
}



