\name{plot.OCcoords}
\alias{plot.OCcoords}
\title{ Optimal Classification Coordinate Plot }
\description{ 
  \code{plot.coords} reads an Optimal Classification object in 2 user-specified
  dimensions and plots the coordinates of each member, applying separate colors
  and shapes to each party by default.  A unit circle is included to emphasize the
  constraints on the Optimal Classification coordinates, and options to select
  non-party attributes of legislators are included.  For a 1D \code{OCobject}
  object, Optimal Classification ranks are plotted against themselves, so they
  appear on a straight line.
}

\usage{
\method{plot}{OCcoords}(x, main.title="OC Coordinates",
    d1.title="First Dimension", d2.title="Second Dimension", dims=c(1,2),
    plotBy="party", color=TRUE, shape=TRUE, cutline=NULL, Legend=TRUE,
    legend.x=0.8, legend.y=1,\ldots) 
}

\arguments{
  \item{x}{ an \code{OCobject} output object. }
  \item{main.title}{ string, coordinate plot title. }
  \item{d1.title}{ string, x-axis label.}
  \item{d2.title}{ string, y-axis label.}
  \item{dims}{ vector of length 2, specifying the dimensions to be plotted.}
  \item{plotBy}{ string, name of a variable in \code{OCobject\$legislators}.
                \code{plot.coords} will plot coordinates using this variable as a selector.}
  \item{color}{ logical, marks different groups specified by \code{plotBy} using
                different colors if TRUE. }
  \item{shape}{ logical, marks different groups specified by \code{plotBy} using different
                shapes if TRUE.}
  \item{cutline}{ vector, selects roll calls by row number for which a cutting line is desired.}
  \item{Legend}{ logical, include a generic legend.}
  \item{legend.x}{ numeric, corresponds to the 'x' argument of legend().}
  \item{legend.y}{ numeric, corresponds to the 'y' argument of legend().}
  \item{...}{ other arguments to \code{symbols}.}
}

\value{
    A coordinate plot.
}

\author{ 
Keith Poole \email{kpoole@uga.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{lo@uni-mannheim.de}

Royce Carroll \email{rcarroll@ucsd.edu}
}

\seealso{
  '\link{oc}', '\link{plot.OCskree}', '\link{plot.OCangles}',
  '\link{plot.OCcutlines}', '\link{plot.OCobject}'
}

\examples{
    #This data file is the same as that obtained using:
    #data(sen90)
    #sen90oc<-oc(sen90,dims=2,polarity=c(7,2)) 

    data(sen90oc)
    summary(sen90oc)
    plot.OCcoords(sen90oc)
}
\keyword{ multivariate }
