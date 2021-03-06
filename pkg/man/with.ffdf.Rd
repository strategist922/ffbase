\name{with.ffdf}
\alias{with.ffdf}
\title{Evaluate an expression in a ffdf data environment}
\usage{
  \method{with}{ffdf} (data, expr, ...)
}
\arguments{
  \item{data}{\code{\link{ffdf}} data object used as an
  environment for evaluation.}

  \item{expr}{expression to evaluate.}

  \item{...}{arguments to be passed to
  \code{\link{chunk}}.}
}
\value{
  if expression is a \code{vector} a newly created
  \code{ff} vector will be returned otherwise if the
  expression is a data.frame a newly created \code{ffdf}
  object will be returned.
}
\description{
  Evaluate an R expression in an environment constructed
  from a ffdf data frame. (see \code{\link{with}}). Please
  note that you should write your expression as if it is a
  normal \code{data.frame}. The resulting return value
  however will be a \code{ff} object.
}
\examples{
dat <- data.frame(x=1:10, y=10:1)

ffdat <- as.ffdf(dat)

with(ffdat, {x+y})
}
\seealso{
  \code{\link{ffdfwith}}
}

