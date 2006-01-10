\name{ES.h}
\alias{ES.h}

\title{Effet size calculation for proportions}
\description{
Compute effect size h for two proportions
}

\usage{
ES.h(p1, p2)
}

\arguments{
\item{p1}{First proportion}
\item{p2}{Second proportion}
}

\details{
The effect size is 2*asin(sqrt(p1))-2*asin(sqrt(p2))
}

\value{
The corresponding effect size
}

\references{J. Cohen (1988) Statistical power analysis for the behavioral scientist. Lawrence Erlbaum Associates, publishers.}

\author{Stéphane CHAMPELY}

\seealso{pwr.p.test, pwr.2p.test, pwr.2p2n.test}

\examples{
## Exercise 6.5 p. 203 from Cohen (1988)
h<-ES.h(0.5,0.4)
h
pwr.p.test(h=h,n=60,sig.level=0.05,alternative="two.sided")
}

\keyword{htest}
