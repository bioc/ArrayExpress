\name{getcolraw}
\alias{getcolraw}
\docType{data}
\title{ Return the possible column names from raw MAGE-TAB files }
\description{
  \code{getcolraw} extracts the column names from raw MAGE-TAB and
  return them. The output can be use to set the argument 'rawcol' 
  of the function \code{magetab2bioc}.
}

\usage{
getcolraw(rawfiles)
}

\arguments{
  \item{rawfiles}{rawfiles are the name of the raw MAGE-TAB files to be read.}
}

\seealso{\code{\link[ArrayExpress]{ArrayExpress}},
  \code{\link[ArrayExpress]{queryAE}},
  \code{\link[ArrayExpress]{getAE}}} 
\author{
  Audrey Kauffmann 
  
  Maintainer: Jose Marugan <jcmarca@ebi.ac.uk>  
}
\keyword{datasets}
