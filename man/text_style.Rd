% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text-style.R
\name{text_style}
\alias{text_style}
\title{Text style}
\usage{
text_style(x, style)
}
\arguments{
\item{x}{A tag element or \link{.style} pronoun.}

\item{style}{A character string specifying the text style. One of,
\itemize{
\item \code{"italic"}
\item \code{"normal"}
}}
}
\value{
An object of the same type as \code{x}.
}
\description{
The \code{text_style()} function adjusts the style of text in a tag element.
}
\examples{

library(htmltools)

p(
  .style \%>\%
    text_style("italic"),
  "Italic text"
)

p(
  .style \%>\%
    text_style("normal"),
  "Normal text"
)

}
\seealso{
Other text utilities: 
\code{\link{text_alignment}()},
\code{\link{text_break}()},
\code{\link{text_color}()},
\code{\link{text_decoration}()},
\code{\link{text_height}()},
\code{\link{text_selection}()},
\code{\link{text_transform}()},
\code{\link{text_weight}()},
\code{\link{text_wrap}()}
}
\concept{text utilities}
