\name{plot.OCskree}
\alias{plot.OCskree}
\title{ Optimal Classification Skree Plot }
\description{ 
  \code{plot.skree} is the function that takes an Optimal Classification object and
  plots a Skree plot. Skree plots show the dimensionality of the voting by showing
  the sizes of the eigenvalues.
}

\usage{
\method{plot}{OCskree}(x, main.title="Skree Plot", x.title="Dimension",
        y.title="Eigenvalue",\ldots)
}

\arguments{
  \item{x}{ an \code{OCobject} output object. }
  \item{main.title}{ string, Skree plot title. }
  \item{x.title}{ string, x-axis label.}
  \item{y.title}{ string, y-axis label.}
  \item{...}{ other arguments to \code{plot}.}
}

\value{
    A Skree plot, showing the first 20 eigenvalues.
}

\author{ 
Keith Poole \email{ktpoole@uga.edu}

Jeffrey Lewis \email{jblewis@ucla.edu}

James Lo \email{lojames@usc.edu}

Royce Carroll \email{rcarroll@rice.edu}
}

\seealso{
  '\link{oc}', '\link{plot.OCcoords}', '\link{plot.OCangles}',
  '\link{plot.OCcutlines}', '\link{plot.OCobject}'
}

\examples{
    #This data file is the same as that obtained using:
    #data(sen90)
    #sen90oc<-oc(sen90,dims=2,polarity=c(7,2)) 

    data(sen90oc)
    summary(sen90oc)
    plot.OCskree(sen90oc)
}
\keyword{ multivariate }
