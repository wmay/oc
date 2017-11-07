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
  Voteview team. 2017. \emph{90th Senate Roll Call Vote Data}.
  \url{https://voteview.com/static/data/out/votes/S090_votes.ord}.
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
    #This data file is the same as reading file using:
    \dontrun{
    sen90 <- readKH("https://voteview.com/static/data/out/votes/S090_votes.ord")
	}
    data(sen90)
    summary(sen90)

    #Output file identical to one produced by command below
    \dontrun{
    sen90oc <- oc(sen90,dims=2,polarity=c(7,2))
	}
    data(sen90oc)
    summary(sen90oc)
    plot(sen90oc)
}

\keyword{datasets}
