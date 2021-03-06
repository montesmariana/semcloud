% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute.R
\name{mantelMats}
\alias{mantelMats}
\title{Mantel statistic between two matrices}
\usage{
mantelMats(mat1, mat2)
}
\arguments{
\item{mat1}{First matrix}

\item{mat2}{Second matrix}
}
\value{
Statistic from \code{\link[vegan]{mantel}} between the two matrices.
}
\description{
Mantel statistic between two matrices
}
\seealso{
Other distances: 
\code{\link{eucliMats}()},
\code{\link{procMats}()}
}
\concept{distances}
