\name{sen90}
\alias{sen90}

\title{
  90th U.S. Senate Roll Call Vote Matrix
}

\description{
  This dataframe contains a matrix of votes cast by U.S. Senators
  in the 90th Congress.  The data are formatted consistent with the
  \code{rollcall} object format in Simon Jackman's \code{pscl} package.
}

\usage{
data(sen90)
}

\value{
  The dataframe contains roll call data for all Senators in the 90th Senate.
  The data is formatted as a \code{rollcall} object with the following elements.

  \item{votes}{ data frame, containing all data from the old \code{nom31.dat} file about
        legislators. For a typical W-NOMINATE object run with an ORD file read using
        \code{readKH}, it will contain the following:
    \itemize{
    \item{\code{state}}{ State name of legislator.}
    \item{\code{icpsrState}}{ ICPSR state code of legislator.}
    \item{\code{cd}}{ Congressional District number.}
    \item{\code{icpsrLegis}}{ ICPSR code of legislator.}
    \item{\code{party}}{ Party of legislator.}
    \item{\code{partyCode}}{ ICPSR party code of legislator.}
    }
    }

  \item{codes}{ list of four vectors. \code{yea} shows the codes in \code{votes} that are yea
        votes, 'nay' shows nay codes, \code{notInLegis} shows absences, and \code{missing}
        shows the missing codes. }
  \item{n}{ numeric, number of legislators }
  \item{m}{ numeric, number of roll calls }
  \item{legis.data}{ data frame, containing the following information on legislators:
    \itemize{
    \item{\code{state}}{ State name of legislator.}
    \item{\code{icpsrState}}{ ICPSR state code of legislator.}
    \item{\code{cd}}{ Congressional District number.}
    \item{\code{icpsrLegis}}{ ICPSR code of legislator.}
    \item{\code{party}}{ Party of legislator.}
    \item{\code{partyCode}}{ ICPSR party code of legislator.}
   }
   }
  \item{vote.data}{ null, would otherwise be a data frame containing data on the votes. }
  \item{desc}{ null, would otherwise be a string describing the data set. }
  \item{source}{ string, describing where data set was read from. }

}

\source{
  Keith Poole. 2005. \emph{90th Senate Roll Call Vote Data}.
  \url{http://www.voteview.com/}.
}

\author{ 
Keith Poole \email{kpoole@ucsd.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{jameslo@ucla.edu}

Royce Carroll \email{rcarroll@ucsd.edu}
}

\seealso{
  '\link{oc}'.
}

\examples{
    #This data file is the same as reading file using:
    #sen90 <- readKH("ftp://voteview.com/sen90kh.ord")
    #All ORD files can be found on www.voteview.com
    data(sen90)
    
    summary(sen90)
    result<-oc(sen90,polarity=c(2,5))
    summary(result)
    plot(result)
}

\keyword{datasets}
