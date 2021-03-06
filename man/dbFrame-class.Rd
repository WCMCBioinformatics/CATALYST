% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\docType{class}
\name{dbFrame-class}
\alias{dbFrame-class}
\alias{dbFrame}
\title{Debarcoding frame class}
\description{
This class represents the data returned by and used throughout debarcoding.
}
\details{
Objects of class \code{dbFrame} hold all data required for debarcoding:
\enumerate{
\item as the initial step of single-cell deconcolution, 
\code{\link{assignPrelim}} will return a \code{dbFrame} containing the
input measurement data, barcoding scheme, and preliminary event assignments.
\item assignments will be made final by \code{\link{applyCutoffs}}.
Optionally, population-specific separation cutoffs may be estimated 
by running \code{\link{estCutoffs}} prior to this.
\item \code{\link{plotYields}}, \code{\link{plotEvents}} and 
\code{\link{plotMahal}} aim to guide selection of devoncolution parameters 
and to give a sense of the resulting barcode assignment quality.
}
\code{show(dbFrame)} will display \itemize{
\item the dimensionality of the measurement data and number of barcodes
\item current assignments in order of decreasing population size
\item current separation cutoffs
\item the average and per-population yield 
      that will be achieven upon debarcoding}
}
\section{Slots}{

\describe{
\item{\code{exprs}}{a matrix containing raw intensities of the input flowFrame.}

\item{\code{bc_key}}{binary barcoding scheme with numeric masses as column names 
and samples names as row names OR a numeric vector of barcode masses.}

\item{\code{bc_ids}}{vector of barcode IDs. If a barcoding scheme is supplied, 
the respective binary code's row name, else, the mass of the respective 
barcode channel.}

\item{\code{deltas}}{numeric vector of separations between positive and negative 
barcode populations computed from normalized barcode intensities.}

\item{\code{normed_bcs}}{matrix containing normalized barcode intensities.}

\item{\code{mhl_dists}}{mahalanobis distances.}

\item{\code{sep_cutoffs}}{numeric vector of distance separation cutoffs between positive and negative 
barcode populations above which events will be unassigned.}

\item{\code{mhl_cutoff}}{non-negative and non-zero numeric value specifying the Mahalanobis distance 
below which events will be unassigned.}

\item{\code{counts}}{matrix of dimension (# barcodes)x(101) where each row contains the number 
of events within a barcode for which positive and negative populations 
are separated by a distance between in [0,0.01), ..., [0.99,1], respectively.}

\item{\code{yields}}{a matrix of dimension (# barcodes)x(101) where each row contains the 
percentage of events within a barcode that will be obtained after applying
a separation cutoff of 0, 0.01, ..., 1, respectively.}
}}

\author{
Helena Lucia Crowell \email{crowellh@student.ethz.ch}
}
