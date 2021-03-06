% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hdbscan.R
\name{cwsForClusters}
\alias{cwsForClusters}
\title{Map context words and HDBSCAN clusters}
\usage{
cwsForClusters(variables, cws_column, cluster_column, b = 1)
}
\arguments{
\item{variables}{Dataframe with IDs, clusters and lists of context words}

\item{cws_column}{Character string: Name of the column with the character vectors (one per row) of context words}

\item{cluster_column}{Character string: Name of the column with the name of the clusters (must be a factor)}

\item{b}{Weight for computing \code{\link{fscore}}}
}
\value{
a \link[tibble:tibble-package]{tibble} with one row per context word per cluster, with frequency information.
}
\description{
The function expects a dataframe where at least you have token-id's (e.g. \verb{_id}),
a column with character vectors of context words (e.g. \code{cws})
and a column with names of clusters (e.g. \code{cluster}).
The example below shows how to also turn \verb{;}-separated values into character vectors
within a \link[tibble:tibble-package]{tibble} dataframe.
}
\examples{
\dontrun{

variables <- dplyr::mutate(variables, cws = stringr::str_split(cws, ";"))
cwsForClusters(variables, "cws", "cluster")

}

}
