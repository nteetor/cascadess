% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visible.R
\name{visible}
\alias{visible}
\title{Element visibility}
\usage{
visible(x, show)
}
\arguments{
\item{x}{A tag element or \link{.style} pronoun.}

\item{show}{\code{TRUE} or \code{FALSE}.}
}
\description{
The \code{visible()} function changes the visibility of a tag element. An
invisible element is both visually hidden and is also hidden from screen
readers.
}
\examples{

library(htmltools)

div("I am hidden") \%>\%
  visible(FALSE)

}
