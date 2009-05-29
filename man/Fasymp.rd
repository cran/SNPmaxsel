  \name{Fasymp}
\alias{Fasymp}

\title{Asymptotical distribution of the maximally selected chi-square statistic}
\usage{
Fasymp(t,a.vec,type=NULL,groups=NULL)
}
\arguments{
  \item{t}{the value at which the distribution function has to be computed.}
  \item{a.vec}{A vector of length K giving the proportion of observations in
  each category. Its sum must be 1. If \code{type}="inter.ord" or "inter.cat",
  \code{a.vec} must have length 9.}
  \item{type}{must be one of "ordinal", "all.pairs", "all.partitions",
  "inter.ord", "inter.cat", "inter.ord.main". If \code{type}=\code{NULL}, the chi-square statistics
  are computed for the groups defined by \code{groups}}
  \item{groups}{If \code{type}=\code{NULL}, the chi-square statistics are computed
  for the groups defined by \code{groups}. \code{groups} must be a list with m
  elements, where m is the number of considered chi-square statistics. Each element
  is a list with two elements \code{group1} and \code{group2}. \code{groups$group1} and
  \code{groups$group2} are numeric vectors giving the indices of the categories
  included in both groups. See example below.}
}
\description{
This function computes the asymptotical distribution of the maximally selected chi-square
statistic, where maximal selection is performed over the test statistics defined
by \code{type} or user-defined through \code{groups}. 
}

\details{
This function uses the function \code{pmvnorm} from the package \code{mvtnorm}.
If the considered test statistics are defined by \code{groups}, \code{groups}
should not have more than 100 elements, since the \code{pmvnorm} function
becomes unstable (or computationally prohibitive) for such a high dimension.
}

\value{
       the value of the distribution function at \code{t}.
    }

\references{
Boulesteix AL, Strobl C, Weidinger S, Wichmann HE, Wagenpfeil S, 2007.
Multiple testing for SNP-SNP interactions. Statistical Applications in Genetics and Molecular Biology 6:37.
}

\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/index.html})

}
\seealso{\code{\link{maxsel.asymp.test}}, \code{\link{maxsel}}.}


\examples{
# load SNPmaxsel library
# library(SNPmaxsel)

Fasymp(t=2,a.vec=c(0.2,0.1,0.05,0.05,0.6),type="ord")
Fasymp(t=2,a.vec=c(0.2,0.1,0.05,0.05,0.6),type="all.pairs")
Fasymp(t=2,a.vec=c(0.2,0.1,0.05,0.05,0.6),type="all.partitions")

Fasymp(t=2,a.vec=c(0.2,0.1,0.1,0.1,0.05,0.05,0.05,0.05,0.3),type="inter.ord")
Fasymp(t=2,a.vec=c(0.2,0.1,0.1,0.1,0.05,0.05,0.05,0.05,0.3),type="inter.cat")

# Creating a user-defined groups list 
# (correponding to type)="ord" with K=5)
my.groups<-list(list(group1=1,group2=2:5),list(group1=1:2,group2=3:5),
list(group1=1:3,group2=4:5),list(group1=1:4,group2=5))

Fasymp(t=2,a.vec=c(0.2,0.1,0.05,0.05,0.6),type=NULL,groups=my.groups)
}
\keyword{htest}
