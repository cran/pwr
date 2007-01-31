\name{pwr-package}
\alias{pwr-package}
\alias{pwr}
\docType{package}
\title{
Basic power calculations 
pwr
}
\description{
Power calculations along the lines of Cohen (1988)
	using in particular the same notations for effect sizes.
	Examples from the book are given.
}
\details{
\tabular{ll}{
Package: \tab pwr\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2007-01-31\cr
License: \tab GPL version 2 or newer \cr
}
This package contains functions for basic power calculations using effect sizes and 
	notations from Cohen (1988) :
	pwr.p.test : test for one proportion (ES=h)
	pwr.2p.test : test for two proportions (ES=h)
	pwr.t.test : t tests for means (ES=d)
	pwr.t2n.test : two samples (different sizes) t test for means (ES=d)
	pwr.anova.test : test for one-way balanced anova (ES=f)
	pwr.r.test : correlation test (ES=r)
	pwr.chisq.test : Chi-squared test  (ES=w)
	pwr.f2.test : test for the general linear model (ES=f2)
}
\author{
Stéphane Champely (based on previous works by Claus Ekstrom and Peter Dalgaard)

Maintainer: Stéphane Champely <champely@univ-lyon1.fr>
}
\references{
J. Cohen (1988) Statistical power analysis for the
	behavioral sciences. Lawrence Erlbaum Associates, publishers.
}
\keyword{ package }
\keyword{htest}
\examples{
## Exercise 8.1 P. 357 from Cohen (1988) 
pwr.anova.test(f=0.28,k=4,n=20,sig.level=0.05)

## Exercise 6.1 p. 198 from Cohen (1988)
pwr.2p.test(h=0.3,n=80,sig.level=0.05,alternative="greater")

## Exercise 7.3 p. 251
pwr.chisq.test(w=0.346,df=(2-1)*(3-1),N=140,sig.level=0.01)

## Exercise 6.5 p. 203 from Cohen (1988)
pwr.p.test(h=0.2,n=60,sig.level=0.05,alternative="two.sided")
}
