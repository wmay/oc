\name{plot.OCobject}
\alias{plot.OCobject}
\title{ Optimal Classification Summary Plot }
\description{ 
  \code{plot.OCobject} reads an Optimal Classification object in two user-specified
  dimensions and plots the coordinates, cutting lines, a Coombs mesh, and a Skree plot.
  For one-dimensional \code{OCobject} objects, it plots a one-dimensional coordinate
  plot along with a Skree plot.
}

\usage{
\method{plot}{OCobject}(x, dims=c(1,2), \ldots)
}

\arguments{
  \item{x}{ an \code{OCobject} output object. }
  \item{dims}{ a vector of length 2, specifying the two dimensions to be plotted. }
  \item{...}{ other arguments do nothing and are not passed to any plot functions. }
}

\value{
    A summary plot of an \code{OCobject} object.
}

\author{ 
Keith Poole \email{kpoole@uga.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{lo@uni-mannheim.de}

Royce Carroll \email{rcarroll@ucsd.edu}
}

\seealso{
  '\link{oc}', '\link{plot.OCcoords}', '\link{plot.OCskree}',
  '\link{plot.OCangles}', '\link{plot.OCcutlines}'
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
