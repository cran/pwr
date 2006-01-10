\name{pwr.t.test}
\alias{pwr.t.test}
\title{Power calculations for t-tests of means (one sample, two samples and paired samples)}
\description{
 Compute power of tests or determine parameters to obtain target
     power (same as power.t.test except for the definition of the effect size).}
\usage{
pwr.t.test(n = NULL, d = NULL, sig.level = 0.05, power = NULL, type = c("two.sample", "one.sample", "paired"), alternative = c("two.sided", "one.sided"))
}
\arguments{
  \item{n}{Number of observations (per sample)}
  \item{d}{Effect size}
  \item{sig.level}{Significance level (Type I error probability)}
  \item{power}{Power of test (1 minus Type II error probability)}
  \item{type}{Type of t test : one- two- or paired-samples}
  \item{alternative}{One- or two-sided test}
}
\details{
 Exactly one of the parameters 'd','n','power' and
     'sig.level' must be passed as NULL, and that parameter is
     determined from the others. Notice that the last one has non-NULL
     default so NULL must be explicitly passed if you want to compute
     it.

}
\value{
   Object of class 'power.htest', a list of the arguments
     (including the computed one) augmented with 'method' and 'note'
     elements.
}
\references{J. Cohen (1988) Statistical power analysis for the
	behavioral scientist. Lawrence Erlbaum Associates, publishers.}
\seealso{power.t.test}
\author{Stéphane Champely <champely@univ-lyon1.fr> but this is a mere copy of Peter Dalgaard work (power.t.test)}
\note{  
'uniroot' is used to solve power equation for unknowns, so you may
     see errors from it, notably about inability to bracket the root
     when invalid arguments are given.
}
\examples{

## One sample (power)
## Exercise 2.5 p. 47 from Cohen (1988)
pwr.t.test(d=0.2,n=60,sig.level=0.10,type="one.sample",alternative="two.sided")

## One sample (sample size)
## Exercise 2.12 p. 61 from Cohen (1988)
pwr.t.test(d=0.1,power=0.90,sig.level=0.01,type="one.sample",alternative="two.sided")

## Paired samples (power)
## Exercise p. 50 from Cohen (1988)
d<-8/(16*sqrt(2*(1-0.6)))
pwr.t.test(d=d,n=40,sig.level=0.05,type="paired",alternative="two.sided")

## Paired samples (sample size)
## Exercise 2.15 p. 66 from Cohen (1988)
d<-0.5/sqrt(2*(1-0.65))
pwr.t.test(d=d,power=0.95,sig.level=0.01,type="one.sample",alternative="two.sided")

## Two independent samples (power)
## Exercise 2.1 p. 40 from Cohen (1988)
d<-2/2.8
pwr.t.test(d=d,n=30,sig.level=0.05,type="two.sample",alternative="two.sided")

## Two independent samples (sample size)
## Exercise 2.10 p. 59 from Cohen (1988)
pwr.t.test(d=0.3,power=0.75,sig.level=0.05,type="two.sample",alternative="one.sided")

}
\keyword{htest}