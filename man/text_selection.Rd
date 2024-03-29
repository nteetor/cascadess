% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text-selection.R
\name{text_selection}
\alias{text_selection}
\title{Text selection}
\usage{
text_selection(x, select)
}
\arguments{
\item{x}{A tag element or \link{.style} pronoun.}

\item{select}{A character string.}
}
\description{
Text selection
}
\examples{

.style \%>\%
  text_selection("all")

}
\seealso{
Other text utilities: 
\code{\link{text_alignment}()},
\code{\link{text_break}()},
\code{\link{text_color}()},
\code{\link{text_decoration}()},
\code{\link{text_transform}()},
\code{\link{text_wrap}()}
}
\concept{text utilities}
