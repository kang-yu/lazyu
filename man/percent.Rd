% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/percent.R
\name{percent}
\alias{percent}
\title{Format numbers to percent}
\usage{
percent(x, digits = 2, format = "f", ...)
}
\arguments{
\item{x}{A numeric vector.}

\item{digits}{An integer to define the number of dicimals, default is 2.}

\item{format}{A string define the format argument for using the formatC function.}

\item{\dots}{Arguments passed to \code{\link{formatC}}.}
}
\description{
Formats a numeric vector to percentage string vector.
}
\examples{
percent(1:3, 1)
}
\seealso{
\code{\link{formatC}} and \code{\link{sprintf}}
}
