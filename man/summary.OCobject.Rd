\name{summary.OCobject}
\alias{summary.OCobject}
\title{ Optimal Classification Summary }
\description{ 
  \code{summary.OCobject} reads an Optimal Classification object and prints a summary.
}

\usage{
\method{summary}{OCobject}(object,verbose=FALSE,...)              
}

\arguments{
  \item{object}{ an \code{OCobject} output object. }
  \item{verbose}{ logical, includes all ideal points if TRUE, otherwise only returns
  the first 10 legislators. }
  \item{...}{ other arguments do nothing and are not passed to any functions. }
}

\value{
    A summary of a \code{OCobject} object.
}

\author{ 
Keith Poole \email{ktpoole@uga.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{jameslo@princeton.edu}

Royce Carroll \email{rcarroll@rice.edu}
}


\seealso{
  '\link{oc}', '\link{plot.OCcoords}', '\link{plot.OCskree}', '\link{plot.OCangles}',
  '\link{plot.OCcutlines}', '\link{plot.OCobject}'
}

\examples{
    #This data file is the same as that obtained using:
    #data(sen90)
    #sen90oc<-oc(sen90,dims=2,polarity=c(7,2)) 

    data(sen90oc)
    summary(sen90oc)
    plot(sen90oc)
}
\keyword{ multivariate }
