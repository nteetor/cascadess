% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flex-direction.R
\name{flex_direction}
\alias{flex_direction}
\title{Flex direction}
\usage{
flex_direction(x, ...)
}
\arguments{
\item{x}{A tag element or \link{.style} pronoun.}

\item{...}{A character string specifying a direction. One of,
\itemize{
\item \code{"row"}
\item \code{"column"}

Use name-value pairs to specify \link{breakpoints}.
}}
}
\value{
An object of the same type as \code{x}.
}
\description{
The \code{flex_direction()} function adjusts the
}
\examples{

library(htmltools)

div(
  .style \%>\%
    flex_display() \%>\%
    flex_direction("column")
)

}
\seealso{
Other flex utilities: 
\code{\link{flex_align}()},
\code{\link{flex_content}()},
\code{\link{flex_display}()},
\code{\link{flex_justify}()},
\code{\link{flex_wrap}()},
\code{\link{item_align}()},
\code{\link{item_fill}()},
\code{\link{item_grow}()},
\code{\link{item_order}()}
}
\concept{flex utilities}
