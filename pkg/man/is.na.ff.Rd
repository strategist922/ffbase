\name{is.na.ff}
\alias{is.na.ff}
\alias{is.na<-.ff}
\title{'Not Available' / Missing Values for ff vectors

The generic function \code{is.na} indicates which elements are missing.\cr
The generic function \code{is.na<-} sets elements to \code{NA}.}
\usage{
  \method{is.na}{ff} (x, ...)

  \method{is.na}{ff} (x, ...) <- value
}
\arguments{
  \item{x}{a \code{ff} vector}

  \item{...}{other parameters passed on to chunk}

  \item{value}{a suitable ff index vector for use with x}
}
\value{
  A logical \code{ff} vector of the same length of x
  indicating if the ff vector contains missing values.
}
\description{
  'Not Available' / Missing Values for ff vectors

  The generic function \code{is.na} indicates which
  elements are missing.\cr The generic function
  \code{is.na<-} sets elements to \code{NA}.
}
\examples{
is.na.ff(ff(c(NA, 1:100)), BATCHBYTES=20, VERBOSE=TRUE)
## S3 generic
is.na(ff(c(NA, 1:100)))
## Assign a missing value
x <- ff(c(NA, 1:100))
is.na(x) <- ff(c(3,5))
x
is.na(x) <- 7:8
x



}
\seealso{
  \code{\link[base]{is.na}, \link[ff]{ffvecapply}}
}

