\name{transf.inter}
\alias{transf.inter}

\title{Transforms a pair of SNPs into a single variable with nine categories}
\usage{
transf.inter(x1,x2)
}
\arguments{
  \item{x1}{a numeric vector of length n giving the first SNP, coded as
  1,2,3.}
  \item{x2}{a numeric vector of length n giving the second SNP, coded as
  1,2,3.}
}
\description{
The function \code{transf.inter} creates a new variable with 9 categories
out of a pair of variables with 3 categories (e.g. SNPs). The new variable
is generated as described in Boulesteix et al (2007): =1 if x1=1 and x2=1, =2 
if x1=2 and x2=1, =3 if x1=3 and x2=1, =4 if x1=1 and x2=2, =5 if x1=2 and x2=2,
=6 if x1=3 and x2=2, =7 if x1=1 and x2=3, =8 if x1=2 and x2=3, =9 if x1=3 and
x2=3.
}

\details{

}

\value{
       a numeric vector of length n containing the new variable with 9
       categories.
    }

\references{
Boulesteix AL, Strobl C, Weidinger S, Wichmann HE, Wagenpfeil S, 2007.
Multiple testing for SNP-SNP interactions. Statistical Applications in Genetics and Molecular Biology 6:37.

}

\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/index.html})

}
\seealso{\code{\link{maxsel}},\code{\link{maxsel.asymp.test}}.}


\examples{
# load SNPmaxsel library
# library(SNPmaxsel)

x1<-sample(3,100,replace=TRUE)
x2<-sample(3,100,replace=TRUE)

transf.inter(x1,x2)


}
\keyword{htest}
