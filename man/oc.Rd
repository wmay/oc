\name{oc}
\alias{oc}
\title{ Optimal Classification Roll Call Scaling }
\description{ 
  \code{oc} is the function that takes a \code{rollcall} object and estimates nonmetric
  Optimal Classification scores with them.
}

\usage{
oc(rcObject, dims=2, minvotes=20, lop=0.025, polarity, verbose=FALSE)
}

\arguments{
  \item{rcObject}{ An object of class \code{rollcall}, from Simon Jackman's \code{pscl} package. }
  \item{dims}{ integer, number of dimensions to estimate. Must be nonnegative and cannot
                exceed 10 dimensions.}
  \item{minvotes}{ minimum number of votes a legislator must vote in for them to be analyzed. }
  \item{lop}{ A proportion between 0 and 1, the cut-off used for excluding lopsided
                votes, expressed as the proportion of non-missing votes on the minority side.
                The default, \code{lop=0.025}, eliminates votes where the minority is smaller
                than 2.5%.  Inputting a valid proportion will generate a new vector that
                overwrites the \code{lopsided} attribute in the RC object inputted. }
  \item{polarity}{ a vector specifying the legislator in the data set who is conservative on
                    each dimension. For example, \code{c(3,5)} indicates legislator 3 is conservative
                    on dimension 1, and legislator 5 is conservative on dimension 2.
                    Alternatively, polarity can be specified as a string for legislator names
                    found in \code{legis.names} (ie. \code{c("Bush", "Gore")}) if every legislative name in
                    the data set is unique.  Finally, polarity can be specified as a list (ie.
                    \code{list("cd",c(4,5))}) where the first list item is a variable from the roll
                    call object's \code{legis.data}, and the second list item is a conservative
                    legislator on each dimension as specified by the first list item.
                    \code{list("cd",c(4,5))} thus specifies the legislators with congressional
                    district numbers of 4 and 5. }
  \item{verbose}{ logical, indicates whether bills and legislators to be deleted should be
                    printed while data is being checked before ideal points are estimated.}
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

\author{ 
Keith Poole \email{ktpoole@uga.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{lojames@usc.edu}

Royce Carroll \email{rcarroll@rice.edu}
}

\references{
Keith Poole. 2000. 'Non-parametric Unfolding of Binary Choice Data.' Political
Analysis, 8(3):211-237

Keith Poole. 2005. 'Spatial Models of Parliamentary Voting.' Cambridge:
Cambridge University Press.

Keith Poole. \url{ https://legacy.voteview.com/ }

}

\seealso{
  '\link{plot.OCobject}','\link{summary.OCobject}'.
}

\examples{
    #This data file is the same as reading file using:
    \dontrun{
    sen90 <- readKH("https://voteview.com/static/data/out/votes/S090_votes.ord")
    }
    #All ORD files can be found on voteview.com
    data(sen90)
    summary(sen90)

	#Small executable example
	sen90.1d <- oc(sen90,dims=1,polarity=c(7))

    #Output file identical to one produced by command below
    \dontrun{
    sen90oc <- oc(sen90,dims=2,polarity=c(7,2))
	}
    data(sen90oc)
    summary(sen90oc)
    plot(sen90oc) 

}
\keyword{ multivariate }
