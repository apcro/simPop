% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/whipple.R
\name{whipple}
\alias{whipple}
\title{Whipple index (original and modified)}
\usage{
whipple(x, method = "standard", weight = NULL)
}
\arguments{
\item{x}{numeric vector holding the age of persons}

\item{method}{\dQuote{standard} or \dQuote{modified} Whipple index.}

\item{weight}{numeric vector holding the weights of each person}
}
\value{
The original or modified Whipple index.
}
\description{
The function calculates the original and modified Whipple index to evaluate
age heaping.
}
\details{
The original Whipple's index is obtained by summing the number of persons in
the age range between 23 and 62, and calculating the ratio of reported ages
ending in 0 or 5 to one-fifth of the total sample. A linear decrease in the
number of persons of each age within the age range is assumed. Therefore,
low ages (0-22 years) and high ages (63 years and above) are excluded from
analysis since this assumption is not plausible.

When the digits 0 and 5 are not reported in the data, the original Whipple
index varies between 0 and 100, 100 if no preference for 0 or 5 is within
the data. When only the digits 0 and 5 are reported in the data it reaches a
to a maximum of 500.

For the modified Whipple index, age heaping is calculated for all ten digits
(0-9). For each digit, the degree of preference or avoidance can be
determined for certain ranges of ages, and the modified Whipple index then
is given by the absolute sum of these (indices - 1). The index is scaled between
0 and 1, therefore it is 1 if all age values end with the same digit and 0 it is
distributed perfectly equally.
}
\examples{

#Equally distributed
age <- sample(1:100, 5000, replace=TRUE)
whipple(age)
whipple(age,method="modified")

# Only 5 and 10
age5 <- sample(seq(0,100,by=5), 5000, replace=TRUE)
whipple(age5)
whipple(age5,method="modified")

#Only 10
age10 <- sample(seq(0,100,by=10), 5000, replace=TRUE)
whipple(age10)
whipple(age10,method="modified")

}
\references{
Henry S. Shryock and Jacob S. Siegel, Methods and Materials of
Demography (New York: Academic Press, 1976)
}
\seealso{
\code{\link{sprague}}
}
\author{
Matthias Templ, Alexander Kowarik
}
\keyword{arith}
