% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hdbscan.R
\name{extractHDBSCAN}
\alias{extractHDBSCAN}
\title{Extract HDBSCAN info}
\usage{
extractHDBSCAN(dstmtx, minPts = 8, includePlot = FALSE)
}
\arguments{
\item{dstmtx}{Distance matrix}

\item{minPts}{Minimum points for \code{\link[dbscan]{hdbscan}}}

\item{includePlot}{Whether too include the plot (requires \code{cowplot}.)}
}
\value{
List: the \code{df} element is a \link[tibble:tibble-package]{tibble} with information per token:
\itemize{
\item{\strong{_id}: }{comes from the rownames of \code{dstmtx}}
\item{\strong{cluster}: }{gives the clustering of the elements}
\item{\strong{membprob}: }{indicates membership probabilities}
\item{\strong{eps}: }{returns the epsilon value}
}
If \code{includePlot} is \code{TRUE}, a \code{grob} of the plot is included under \code{hplot}.
}
\description{
Run \code{\link[dbscan]{hdbscan}} on a distance matrix and gather some information.
}
