\name{cohen.ES}
\alias{cohen.ES}
\title{Conventional effects size}
\description{
Give the conventional effect size (small, medium, large)
for the tests available in this package
}
\usage{
cohen.ES(test = c("p", "t", "r", "anov", "chisq", "f2"), size = c("small", "medium", "large"))
}
\arguments{
  \item{test}{The statistical test of interest}
  \item{size}{The ES : small, medium of large? }
}
\value{
The corresponding effect size
}
\references{J. Cohen (1988) Statistical power analysis for the
	behavioral sciences. Lawrence Erlbaum Associates, publishers.}
\author{Stéphane CHAMPELY}

\examples{
## medium effect size for the correlation test
cohen.ES(test="r",size="medium")
}
\keyword{htest}