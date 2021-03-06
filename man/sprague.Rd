% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sprague.R
\name{sprague}
\alias{sprague}
\title{Sprague index (multipliers)}
\usage{
sprague(x)
}
\arguments{
\item{x}{numeric vector of age counts in five-year intervals}
}
\value{
Population counts for age 0, 1, 2, 3, 4, ..., 78, 79, 80+.
}
\description{
Using the Sprague multipliers, the age counts are estimated for each year
having 5-years interval data as input.
}
\details{
The input is population counts of age classes 0-4, 5-9, 10-14, ... , 77-74,
75-79, 80+.
}
\examples{

## example from the world bank
x <- data.frame(age=as.factor(c(
  "0-4",
  "5-9","10-14","15-19", "20-24",
  "25-29","30-34","35-39","40-44","45-49",
  "50-54","55-59","60-64","65-69","77-74","75-79","80+"
    )),
  pop=c(1971990, 2095820,2157190, 2094110,2116580,   2003840, 1785690,
        1502990, 1214170, 796934,  627551,  530305, 488014,
        364498, 259029,158047,  125941)
)

s  <- sprague(x[,2])
s
  
all.equal(sum(s), sum(x[,2]))

}
\references{
G. Calot and J.-P. Sardon.  Methodology for the calculation of
Eurostat's demographic indicators.  Detailed report by the European
Demographic Observatory

\url{http://www.cedefop.europa.eu/files/Methodology_for_the_calculation_of_Eurostats_demographic_indicators.pdf}
}
\seealso{
\code{\link{whipple}}
}
\author{
Matthias Templ
}
\keyword{arith}
