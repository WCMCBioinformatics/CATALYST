% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/outFCS.R
\docType{methods}
\name{outFCS}
\alias{outFCS}
\alias{outFCS,dbFrame-method}
\title{Write population-wise FCS files}
\usage{
outFCS(x, out_path = tempdir(), ...)

\S4method{outFCS}{dbFrame}(x, out_path = tempdir(), out_nms = NULL,
  verbose = TRUE)
}
\arguments{
\item{x}{a \code{\link{dbFrame}}.}

\item{out_path}{character string. Specifies in which location 
output files are to be generated.}

\item{...}{optional arguments.}

\item{out_nms}{an optional character string. Either the name of a 2 column CSV table 
with sample IDs and desired output file names, or a vector of length 
\code{nrow(bc_key(x))} ordered as the samples in the barcoding scheme. 
If NULL (default), sample IDs will be used as file names.}

\item{verbose}{if TRUE (default), a warning is given about populations 
for which no FCS files have been generated.}
}
\value{
a character of the output path.
}
\description{
Writes an FCS file for each sample from a dbFrame.
}
\details{
Creates a separate FCS file for each barcode population. If \code{out_nms} 
is NULL (the default), files will be named after the barcode population's ID 
in the \code{bc_key} slot of the input \code{\link{dbFrame}}; 
unassigned events will be written to "unassigned.fcs", and no output 
is generated for populations with less than 10 event assignments.
}
\examples{
data(sample_ff, sample_key)
re <- assignPrelim(x = sample_ff, y = sample_key)
re <- estCutoffs(x = re)
re <- applyCutoffs(x = re)
outFCS(x = re, out_path = file.path(tempdir()))

}
\author{
Helena Lucia Crowell \email{crowellh@student.ethz.ch}
}
