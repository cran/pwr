\name{pwr.r.test}
\alias{pwr.r.test}

\title{Power calculations for correlation tests}
\description{
 Compute power of test or determine parameters to obtain target
     power.}

\usage{
pwr.r.test(n = NULL, r = NULL, sig.level = 0.05, power = NULL, alternative = c("two.sided", "one.sided"))
}
\arguments{
  \item{n}{Number of observations}
  \item{r}{Linear correlation coefficient}
 \item{sig.level}{Significance level (Type I error probability)}
  \item{power}{Power of test (1 minus Type II error probability)}
  \item{alternative}{One- or two-sided test}
}
\details{
These calculations use the Z' transformation of correlation coefficient : 
	Z'=arctanh(r)+r/(2*(n-1)) (see Cohen (1988) p.546).

 Exactly one of the parameters 'r','n','power' and
     'sig.level' must be passed as NULL, and that parameter is
     determined from the others. Notice that the last one has non-NULL
     default so NULL must be explicitly passed if you want to compute
     it.

}
\value{
   Object of class 'power.htest', a list of the arguments
     (including the computed one) augmented with 'method'
     element.
}
\references{J. Cohen (1988) Statistical power analysis for the
	behavioral scientist. Lawrence Erlbaum Associates, publishers.}
\author{Stéphane Champely <champely@univ-lyon1.fr> but this is a mere copy of Peter Dalgaard work (power.t.test)}
\note{  
'uniroot' is used to solve power equation for unknowns, so you may
     see errors from it, notably about inability to bracket the root
     when invalid arguments are given.
}
\examples{

## Exercise 3.1 p. 96 from Cohen (1988)
pwr.r.test(r=0.3,n=50,sig.level=0.05,alternative="two.sided")
pwr.r.test(r=0.3,n=50,sig.level=0.05,alternative="one.sided")

## Exercise 3.4 p. 208 from Cohen (1988)
pwr.r.test(r=0.3,power=0.80,sig.level=0.05,alternative="two.sided")
pwr.r.test(r=0.5,power=0.80,sig.level=0.05,alternative="two.sided")
pwr.r.test(r=0.1,power=0.80,sig.level=0.05,alternative="two.sided")
}
\keyword{htest}
