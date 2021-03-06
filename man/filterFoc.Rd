% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/concordancer.R
\name{filterFoc}
\alias{filterFoc}
\title{Filter by First Order Parameters}
\usage{
filterFoc(
  foc_param,
  tid_data,
  cw_selection,
  is_dep_fun = function(foc_param) stringr::str_starts(foc_param, "LEMMA"),
  max_steps_fun = function(foc_param) if (foc_param == "LEMMAPATH2") 2 else 3,
  window_filter_fun = windowFilter,
  pos_filter_fun = posFilter,
  bound_filter_fun = function(foc_param) stringr::str_starts(foc_param, "nobound")
)
}
\arguments{
\item{foc_param}{Character string coding the relevant first-order parameters.}

\item{tid_data}{Subsection of a context-word-by-token dataframe, as outputted
by \code{\link{setupConcordancer}}, with information for one token.}

\item{cw_selection}{Vector of context words selected by the model for that token.}

\item{is_dep_fun}{Function that takes \code{foc_param} as input and returns
\code{TRUE} if dependency information should be collected and \code{FALSE}
if the model is based on bag-of-words instead.}

\item{max_steps_fun}{Function that takes \code{foc_param} as input and returns,
for dependency-based models, the maximum number of steps in the dependency path
to accept as viable context words.}

\item{window_filter_fun}{Function that takes \code{foc_param} as input and returns
a vector or list with two elements: the left and right window sizes (for
bag-of-words models).}

\item{pos_filter_fun}{Function that takes \code{foc_param} as input and returns
a vector. If the vector is empty, no \code{pos} filter is implemented, while if
it has values, the rows with \code{pos} included in that vector will be selected.}

\item{bound_filter_fun}{Function that takes \code{foc_param} as input and returns
\code{TRUE} if words \strong{outside} the sentence are modelled and
\code{FALSE} if they are not.}
}
\value{
Enriched dataframe including columns with filtering information.
}
\description{
Filter by First Order Parameters
}
