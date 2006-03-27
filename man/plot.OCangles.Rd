\name{plot.OCangles}
\alias{plot.OCangles}
\title{ Optimal Classification Cutting Line Angles Plot }
\description{ 
  \code{plot.angles} reads an Optimal Classification object and plots a histogram
  of the angles of the cutlines for two dimensions. \code{plot.angles} does not
  work for one-dimensional \code{OCobject} objects.
}

\usage{
plot.OCangles(x, main.title="Cutting Line Angles",
        x.title="Angle in Degrees", y.title="Count",
        dims=c(1,2),...)

}

\arguments{
  \item{x}{ an \code{OCobject} output object. }
  \item{main.title}{ string, coordinate plot title. }
  \item{x.title}{ string, x-axis label.}
  \item{y.title}{ string, y-axis label.}
  \item{dims}{ vector of length 2, specifying the dimensions to be plotted.}
  \item{...}{ other arguments to \code{hist}.}
}

\value{
    A cutting line angle plot.
}

\author{ 
Keith Poole \email{kpoole@ucsd.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{jameslo@ucla.edu}

Royce Carroll \email{rcarroll@ucsd.edu}
}

\seealso{
  '\link{oc}', '\link{plot.OCcoords}', '\link{plot.OCskree}',
  '\link{plot.OCcutlines}', '\link{plot.OCobject}'
}

\examples{
    #This data file is the same as that obtained using:
    #data(sen90)
    #sen90oc<-oc(sen90,dims=2,polarity=c(7,2)) 

    data(sen90oc)
    summary(sen90oc)
    plot.OCangles(sen90oc)
}
\keyword{ multivariate }
