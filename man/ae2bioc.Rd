\name{ae2bioc}
\alias{ae2bioc}
\docType{data}
\title{ Convert MAGE-TAB files from raw data into a Bioconductor object }
\description{
  \code{ae2bioc} converts local MAGE-TAB files into a AffyBatch, an
  ExpressionSet or a NChannelSet.
}
\usage{
ae2bioc(mageFiles, dataCols = NULL, drop = TRUE)
}
\arguments{

  \item{mageFiles}{ A list as given from \code{\link[ArrayExpress]{getAE}}
    function. Containing the following elements:
   \describe{
   \item{rawFiles}{all the expression files to use to create the
    object. The content of the raw.zip MAGE-TAB file.} 
    \item{sdrf}{the name of the sdrf file from MAGE-TAB.}
  \item{idf}{the name of the idf file from MAGE-TAB.}
    \item{adf}{the name of the adf file from MAGE-TAB.}
    \item{path}{is the name of the directory containing these files.}}}

  \item{dataCols}{by default, the columns are automatically selected
    according to the scanner type. If the scanner is unknown or if the
    user wants to use different columns than the default, the argument
    'dataCols' can be set. For two colour arrays it must be a list with
    the fields 'R', 'G', 'Rb' and 'Gb' giving the column names to be
    used for red and green foreground and background. For one colour
    arrays, it must be a character string with the column name to be
    used. These column names must correspond to existing column names of
    the expression files.}
  \item{drop}{ if TRUE and only one platform in series, the platform name will be dropped.}	
 
}

\value{
  An object of class
  \code{\link[affy:AffyBatch-class]{AffyBatch}},
  \code{\link[Biobase:class.ExpressionSet]{ExpressionSet}} or 
  \code{\link[Biobase:class.NChannelSet]{NChannelSet}} with the raw expression
  values in the 'assayData' of the object, the information
  contained in the sdrf file in the 'phenoData', the adf file content in
  the 'featureData' and the idf file content in the 'experimentData'.

  If several array designs are used in the dataset, the output is a
  list with an object for each array design.  
}
\seealso{\code{\link[ArrayExpress]{ArrayExpress}},
  \code{\link[ArrayExpress]{queryAE}},
  \code{\link[ArrayExpress]{getAE}}}
\author{
  Ibrahim Emam
  
  Maintainer: Jose Marugan <jcmarca@ebi.ac.uk>  
}
\examples{
# An example can be found in the help of the getAE function.
}
\keyword{datasets}
