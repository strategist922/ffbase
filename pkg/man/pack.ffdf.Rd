\name{pack.ffdf}
\alias{pack.ffdf}
\title{Packs ffdf data.frames into a compressed file}
\usage{
  pack.ffdf(file, ...)
}
\arguments{
  \item{file}{packaged file, zipped or tar.gz.}

  \item{...}{ff objects to be packed}
}
\description{
  \code{pack.ffdf} stores ffdf data.frames into the given
  \code{file} for easy archiving and movement of data. The
  file can be restored using \code{\link{unpack.ffdf}}. If
  \code{file} ends with ".zip", the package will be zipped
  otherwise it will be tar.gz-ed.
}
\examples{
iris.ffdf <- as.ffdf(iris)

td <- tempfile()

# save the ffdf into the supplied directory
save.ffdf(iris.ffdf, dir=td)

# what in the directory?
dir(td)

#remove the ffdf from memory
rm("iris.ffdf")

# and reload the stored ffdf
load.ffdf(dir=td)

tf <- paste(tempfile(), ".zip", sep="")
packed <- pack.ffdf(file=tf, iris.ffdf)

#remove the ffdf from memory
rm("iris.ffdf")

# restore the ffdf from the packed ffdf
unpack.ffdf(tf)
}
\seealso{
  \code{\link{save.ffdf}} \code{\link{unpack.ffdf}}
}

