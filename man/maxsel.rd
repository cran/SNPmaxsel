\name{maxsel}
\alias{maxsel}

\title{Computes maximally selected chi-square statistics}
\usage{
maxsel(x1,x2=NULL,y,type="inter.ord")
}
\arguments{
  \item{x1}{a numeric vector of length n giving the values of the variable
  \code{x1} for the considered n observations. The
  classes  must be coded as 1,...,K.}
  \item{x2}{a numeric vector of length n giving the values of the variable
  \code{x2} for the considered n observations. \code{x2} should be \code{NULL}
  (default) for all types other than \code{"inter.ord"}, \code{"inter.cat"} and \code{"inter.ord.main"}.
  Since interactions are implemented for K=3 only (SNPs), \code{x2} must be coded
  as 1,2,3.}
  \item{y}{a numeric vector of length n giving the class (response variable Y)
  of the considered n observations. The classes  must be coded as 0 and 1.}
  \item{type}{must be one of "ordinal", "all.pairs", "all.partitions",
  "inter.ord", "inter.cat","inter.ord.main".}
}
\description{
The function maxsel computes the maximal chi-square statistic over some candidate binary 
splits specified by \code{type}. 
}

\details{

}

\value{
the value of the maximally selected chi-square statistic.
    }

\references{
Boulesteix AL, Strobl C, Weidinger S, Wichmann HE, Wagenpfeil S, 2007.
Multiple testing for SNP-SNP interactions. Statistical Applications in Genetics and Molecular Biology 6:37.

}

\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/index.html})

}
\seealso{\code{\link{maxsel.asymp.test}}, \code{\link{Fasymp}}.}


\examples{
# load SNPmaxsel library
# library(SNPmaxsel)


x1<-sample(5,1000,replace=TRUE)
y<-sample(c(0,1),1000,replace=TRUE)

maxsel(x1=x1,y=y,type="ord")
maxsel(x1=x1,y=y,type="all.pairs")
maxsel(x1=x1,y=y,type="all.partitions")

x1<-sample(3,1000,replace=TRUE)
x2<-sample(3,1000,replace=TRUE)

maxsel(x1=x1,x2=x2,y=y,type="inter.ord")
maxsel(x1=x1,x2=x2,y=y,type="inter.cat")
maxsel(x1=x1,x2=x2,y=y,type="inter.ord.main")



}
\keyword{htest}
