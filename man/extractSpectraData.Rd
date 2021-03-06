% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-MSpectra.R
\name{extractSpectraData}
\alias{extractSpectraData}
\title{Extract data from MSnbase objects for use in Spectra}
\usage{
extractSpectraData(x)
}
\arguments{
\item{x}{a \code{list} of \linkS4class{Spectrum} objects or an object extending
\linkS4class{MSnExp} or a \linkS4class{MSpectra} object.}
}
\value{
\code{\link[=DataFrame]{DataFrame()}} with the full spectrum data that can be passed to the
\code{\link[Spectra:Spectra]{Spectra::Spectra()}} function to create a \code{Spectra} object.
}
\description{
\code{extractSpectraData} extracts the spectra data (m/z and intensity values
including metadata) from \linkS4class{MSnExp}, \linkS4class{OnDiskMSnExp},
\linkS4class{Spectrum1}, \linkS4class{Spectrum2} objects (or \code{list} of such objects) and
returns these as a \code{DataFrame} that can be used to create a
\link[Spectra:Spectra]{Spectra::Spectra} object.This function enables thus
to convert data from the \emph{old} \code{MSnbase} package to the newer \code{Spectra}
package.
}
\examples{

## Read an mzML file with MSnbase
fl <- system.file("TripleTOF-SWATH", "PestMix1_SWATH.mzML",
    package = "msdata")
data <- filterRt(readMSData(fl, mode = "onDisk"), rt = c(1, 6))

## Extract the data as a DataFrame
res <- extractSpectraData(data)
res

## This can be used as an input for the Spectra constructor of the
## Spectra package:
## sps <- Spectra::Spectra(res)
## sps
}
\author{
Johannes Rainer
}
