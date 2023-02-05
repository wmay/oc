\name{UN}
\alias{UN}

\title{
  United Nations Vote Data
}

\description{
  This data frame contains votes from the first three sessions of the
  United Nations.  The same data can also be downloaded as a CSV file
  from https://legacy.voteview.com/.  The object of this data set is to
  provide an example of how one might use the W-NOMINATE package on a
  set of roll call votes not already stored in ORD format.
}

\usage{
data(UN)
}

\value{
  This data frame contains votes from the first three sessions of the
  United Nations.  The first column are country names, while the second
  column indicates membership in the former Warsaw Pact (used as a 'party'
  variable).  Yeas are coded 1, 2, and 3, nays are coded 4, 5, and 6,
  missing votes are coded 7, 8, and 9, and not being in the General Assembly
  is coded as a 0.

}

\source{
  Keith Poole. 2005. \emph{UN Vote Data}.
  \url{https://legacy.voteview.com/}.
}

\author{ 
Keith Poole \email{ktpoole@uga.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{lojames@usc.edu}

Royce Carroll \email{rcarroll@rice.edu}
}

\seealso{
  '\link{oc}'.
}

\examples{
#The same data set can be obtained from downloading the UN.csv
#file from legacy.voteview.com and reading it as follows:
\dontrun{
UN<-read.csv("UN.csv",header=FALSE,strip.white=TRUE)
}

data(UN)
UN<-as.matrix(UN)
UN[1:5,1:6]

UNnames<-UN[,1]
legData<-matrix(UN[,2],length(UN[,2]),1)
colnames(legData)<-"party"
UN<-UN[,-c(1,2)]

rc <- rollcall(UN, yea=c(1,2,3), nay=c(4,5,6),
missing=c(7,8,9),notInLegis=0, legis.names=UNnames,
legis.data=legData,
desc="UN Votes",
source="legacy.voteview.com")

# Not Run
\dontrun{
result<-oc(rc,polarity=1,dims=1)
plot(result)
summary(result)
}

}

\keyword{datasets}
