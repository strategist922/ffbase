\name{subset.ff}
\alias{subset.ff}
\alias{subset.ffdf}
\title{Subsetting a ff vector or ffdfdata frame}
\usage{
  \method{subset}{ff} (x, subset, ...)
}
\arguments{
  \item{x}{\code{ff} vector or \code{ffdf} data.frame to be
  subset}

  \item{subset}{an expression, \code{ri}, \code{bit} or
  logical \code{ff} vector that can be used to index x}

  \item{...}{not used}
}
\value{
  a new ff vector containing the subset, data is physically
  copied
}
\description{
  Subsetting a ff vector or ffdfdata frame
}

