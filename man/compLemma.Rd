% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compareLemmas.R
\name{compLemma}
\alias{compLemma}
\title{Compare models of a lemma}
\usage{
compLemma(
  lemma,
  input_dir,
  output_dir,
  transformed = TRUE,
  fun = "euclidean",
  tokens_suffix = ".ttmx.dist.pac",
  row_selection = vector(),
  overwrite = FALSE
)
}
\arguments{
\item{lemma}{Name of the lemma, for the filenames}

\item{input_dir}{Directory where the models are stored.}

\item{output_dir}{Directory where the model information is and will be stored}

\item{transformed}{Whether the distance matrices}

\item{fun}{Function to calculate the distances.}

\item{tokens_suffix}{Suffix to add to the model name in the file names of the distance matrices.}

\item{row_selection}{List of row (and column) names to subset the matrices.}

\item{overwrite}{If FALSE and the models.dist file exists, it will not be created again.}
}
\value{
a \link[tibble:tibble-package]{tibble} with minimal information
}
\description{
Compute pairwise distances between the lemmas, store the distance matrix,
reduce to two dimensions with \code{\link[vegan]{metaMDS}}, store and return summary.
}
