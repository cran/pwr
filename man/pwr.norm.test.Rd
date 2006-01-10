\name{pwr.norm.test}
\alias{pwr.norm.test}

\title{Power calculations for the mean of a normal distribution (known variance)}
\description{
 Compute power of test or determine parameters to obtain target
     power.}
\usage{
pwr.norm.test(d = NULL, n = NULL, sig.level = 0.05, power = NULL, alternative = c("two.sided", "one.sided"))
}

\arguments{
  \item{d}{Effect size d=mu-mu0}
  \item{n}{Number of observations}
  \item{sig.level}{Significance level (Type I error probability)}
  \item{power}{Power of test (1 minus Type II error probability)}
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

## Power at mu=105 for H0 : mu=100 against H1 : mu>100 (sigma=15) 20 observations (alpha=0.05) 
sigma<-15
c<-100
mu<-105
d<-(mu-c)/sigma
pwr.norm.test(d=d,n=20,sig.level=0.05,alternative="one.sided")

## Sample size of the test for power=0.80
pwr.norm.test(d=d,power=0.8,sig.level=0.05,alternative="one.sided")

## Power function of the same test
mu<-seq(95,125,l=100)
d<-(mu-c)/sigma
plot(d,pwr.norm.test(d=d,n=20,sig.level=0.05,alternative="one.sided")$power,type="l",ylim=c(0,1))
abline(h=0.05)
abline(h=0.80)

## Power function for the two-sided alternative
plot(d,pwr.norm.test(d=d,n=20,sig.level=0.05,alternative="two.sided")$power,type="l",ylim=c(0,1))
abline(h=0.05)
abline(h=0.80)
}
\keyword{htest}