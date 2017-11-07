\name{sen90oc}
\alias{sen90oc}

\title{
  90th U.S. Senate Ideal Points via Optimal Classification
}

\description{
  This dataframe contains the estimated ideal points of the 90th U.S Senate
  using \code{oc}.  Although it can easily be obtained from calling
  the example in \code{oc}, it is included here to facilitate illustration
  of the examples for the plot and summary functions.
}

\usage{
data(sen90oc)
}

\value{
    An object of class \code{OCobject}, with elements as follows:

  \item{legislators}{ data frame, containing all data from the old \code{perf25.dat} file about
        legislators. For a typical \code{ocObject} run with an ORD file read using
        \code{readKH}, it will contain the following:
    \itemize{
    \item{\code{state}}{State name of legislator.}
    \item{\code{icpsrState}}{ICPSR state code of legislator.}
    \item{\code{cd}}{Congressional District number.}
    \item{\code{icpsrLegis}}{ICPSR code of legislator.}
    \item{\code{party}}{Party of legislator.}
    \item{\code{partyCode}}{ICPSR party code of legislator.}
    \item{\code{rank}}{Rank ordering of legislator on the first dimension, from lowest to highest.}
    \item{\code{correctYea}}{Predicted Yeas and Actual Yeas.}
    \item{\code{wrongYea}}{Predicted Yeas and Actual Nays.}
    \item{\code{wrongNay}}{Predicted Nays and Actual Yeas.}
    \item{\code{correctNay}}{Predicted Nays and Actual Nays.}
    \item{\code{volume}}{Measure of the legislator's polytope size.}
    \item{\code{coord1D}}{First dimension OC score, with all subsequent dimensions
                    numbered similarly.}
    }
  }

  \item{rollcalls}{ data frame, containing all data from the old \code{perf21.dat} file about
                    bills. For a typical \code{OCobject} object run with an ORD file read
                    using \code{readKH}, it will contain the following:
    \itemize{
    \item{\code{correctYea}}{Predicted Yeas and Actual Yeas.}
    \item{\code{wrongYea}}{Predicted Yeas and Actual Nays.}
    \item{\code{wrongNay}}{Predicted Nays and Actual Yeas.}
    \item{\code{correctNay}}{Predicted Nays and Actual Nays.}
    \item{\code{PRE}}{Proportional Reduction In Error.}
    \item{\code{normvector1D}}{First dimension of the unit normal vector, with all subsequent dimensions
                    numbered similarly.}
    \item{\code{midpoints}}{The projection of the normal vector needed to get the midpoint.}
    }                 
  }
  \item{dimensions}{ integer, number of dimensions estimated. }
  \item{eigenvalues}{ A vector of roll call eigenvalues. }
  \item{fits}{ A vector of length 2 with the classic measures of fit, containing
                the percent correct classification and the APRE.} 
}

\source{
  Voteview Team. 2017. \emph{90th Senate Roll Call Vote Data}.
  \url{https://voteview.com/static/data/out/votes/S090_votes.ord}.
}

\author{ 
Keith Poole \email{ktpoole@uga.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{lojames@usc.edu}

Royce Carroll \email{rcarroll@rice.edu}
}

\seealso{
  '\link{oc}', '\link{plot.OCcoords}', '\link{plot.OCskree}', '\link{plot.OCangles}',
  '\link{plot.OCcutlines}', '\link{plot.OCobject}'
}

\examples{
    #This data file is the same as that obtained using:
    \dontrun{
    data(sen90)
    sen90oc <- oc(sen90,dims=2,polarity=c(7,2)) 
	}

    data(sen90oc)
    summary(sen90oc)
    plot(sen90oc)
}

\keyword{datasets}
