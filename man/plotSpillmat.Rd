% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotSpillmat.R
\name{plotSpillmat}
\alias{plotSpillmat}
\title{Spillover matrix heat map}
\usage{
plotSpillmat(bc_ms, SM, annotate = TRUE, palette = NULL)
}
\arguments{
\item{bc_ms}{a vector of numeric masses corresponding to barcode channels.}

\item{SM}{spillover matrix returned from \code{computeSpillmat}.}

\item{annotate}{logical. If TRUE (default), spill percentages are shown inside bins and
rows/columns are annotated with the total amount of spill caused/received.}

\item{palette}{an optional vector of colors to interpolate.}
}
\value{
plots estimated spill percentages as a heat map. 
Colours are ramped to the highest spillover value present
}
\description{
Generates a heat map of the spillover matrix annotated with 
estimated spill percentages.
}
\examples{
# get single-stained control samples
data(ss_exp)

# specify mass channels stained for
bc_ms <- c(139, 141:156, 158:176)

re <- assignPrelim(x = ss_exp, y = bc_ms)
re <- estCutoffs(x = re)
re <- applyCutoffs(x = re)
spillMat <- computeSpillmat(x = re)
plotSpillmat(bc_ms = bc_ms, SM = spillMat)

}
\author{
Helena Lucia Crowell \email{crowellh@student.ethz.ch}
}
