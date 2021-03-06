% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contingencyWt.R
\name{contingencyWt}
\alias{contingencyWt}
\title{Weighted contingency coefficients}
\usage{
contingencyWt(x, ...)
}
\arguments{
\item{x}{for the default method, a vector that can be interpreted as factor.
For the matrix and \code{data.frame} methods, the columns should be
interpretable as factors.}

\item{\dots}{for the generic function, arguments to be passed down to the
methods, otherwise ignored.}
}
\value{
For the default method, the (weighted) contingency coefficient of
\code{x} and \code{y}.

For the matrix and \code{data.frame} method, a matrix of (weighted) pairwise
contingency coefficients for all combinations of columns.  Elements below
the diagonal are \code{NA}.
}
\description{
Compute (weighted) pairwise contingency coefficients.
}
\details{
The function \code{\link{tableWt}} is used for the computation of the
corresponding pairwise contingency tables. The following methods are implemented:
\itemize{
\item \code{contingencyWt.default(x, y, weights = NULL, ...)}
\item \code{contingencyWt.matrix(x, weights = NULL, ...)}
\item \code{contingencyWt.data.frame(x, weights = NULL, ...)}
}
Additional parameters are:
\itemize{
\item y: a vector that can be interpreted as factor (for the default method)
\item weights: an optional numeric vector containing sample weights
}
}
\examples{

data(eusilcS)

## default method
contingencyWt(eusilcS$pl030, eusilcS$pb220a, weights = eusilcS$rb050)

## data.frame method
basic <- c("age", "rb090", "hsize", "pl030", "pb220a")
contingencyWt(eusilcS[, basic], weights = eusilcS$rb050)
}
\references{
Kendall, M.G. and Stuart, A. (1967) \emph{The Advanced Theory of
Statistics, Volume 2: Inference and Relationship}. Charles Griffin & Co Ltd,
London, 2nd edition.
}
\seealso{
\code{\link{tableWt}}
}
\author{
Andreas Alfons and Stefan Kraft
}
\keyword{category}
\keyword{methods}
