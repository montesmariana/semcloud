% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute.R
\name{procMats}
\alias{procMats}
\title{Procrustes between two matrices}
\usage{
procMats(
  mat1,
  mat2,
  mat1_name = "first matrix",
  mat2_name = "second matrix",
  transformed = TRUE
)
}
\arguments{
\item{mat1}{First matrix}

\item{mat2}{Second matrix}

\item{mat1_name}{Name of the first matrix, for error log (default: "first matrix")}

\item{mat2_name}{Name of the second matrix, for error log (default: "second matrix")}

\item{transformed}{Whether the matrices have been transformed, just for error log}
}
\value{
Output from \code{\link[vegan]{procrustes}} between the two matrices
}
\description{
Procrustes between two matrices
}
\seealso{
Other distances: 
\code{\link{eucliMats}()},
\code{\link{mantelMats}()}
}
\concept{distances}
