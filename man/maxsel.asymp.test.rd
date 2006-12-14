\name{maxsel.asymp.test}
\alias{maxsel.asymp.test}

\title{Test of independence based on maximally selected statistics}
\usage{
maxsel.asymp.test(x1,x2=NULL,y,type)
}
\arguments{
  \item{x1}{a numeric vector of length n giving the values of the variable
  \code{x1} for the considered n observations. The
  classes  must be coded as 1,...,K.}
  \item{x2}{a numeric vector of length n giving the values of the variable
  \code{x2} for the considered n observations. \code{x2} should be \code{NULL}
  (default) for all types other than \code{"inter.ord"} and \code{"inter.cat"}.
  Since interactions are implemented for K=3 only (SNPs), \code{x2} must be coded
  as 1,2,3.}
  \item{y}{a numeric vector of length n giving the class (response variable Y)
  of the considered n observations. The classes  must be coded as 0 and 1.}
  \item{type}{must be one of "ordinal", "all.pairs", "all.partitions",
  "inter.ord", "inter.cat". }
}
\description{
  The function maxsel.test computes the probability that the maximally selected 
chi-square statistic is <= than the value observed from the data, under the 
null-hypothesis of no association between X and Y, given the proportions of observations 
with X=1,...,X=K. The candidate binary splits over which the chi-square statistic
 is maximized is specified by \code{type}. If x denotes the output of the 
function maxsel.test, 1-x may be seen as the p-value of an independence test. 
}

\details{
  See Boulesteix et al (2007).
}

\value{
	\item{maxselstat}{the maximally selected statistic.}
        \item{value}{the value of the distribution function at \code{t}.}    
    }

\references{
 Boulesteix AL, Strobl C, Weidinger S, Wichmann HE, Wagenpfeil S, 2007.
Multiple testing for SNP-SNP interactions: a flexible asymptotic
framework. Submitted.

}

\author{
  Anne-Laure Boulesteix (\url{http://www.slcmsr.net/boulesteix}) 
   
}
\seealso{\code{\link{maxsel}}, \code{\link{Fasymp}}.}


\examples{
# load SNPmaxsel library
# library(SNPmaxsel)

x1<-sample(5,1000,replace=TRUE)
y<-sample(c(0,1),1000,replace=TRUE)

maxsel.asymp.test(x1=x1,y=y,type="ord")
maxsel.asymp.test(x1=x1,y=y,type="all.pairs")
maxsel.asymp.test(x1=x1,y=y,type="all.partitions")

x1<-sample(3,1000,replace=TRUE)
x2<-sample(3,1000,replace=TRUE)

maxsel.asymp.test(x1=x1,x2=x2,y=y,type="inter.ord")
maxsel.asymp.test(x1=x1,x2=x2,y=y,type="inter.cat")



}
\keyword{htest}
