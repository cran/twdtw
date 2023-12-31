% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_date_to_numeric.R
\name{date_to_numeric_cycle}
\alias{date_to_numeric_cycle}
\title{Convert Date/POSIXct to a Numeric Cycle}
\usage{
date_to_numeric_cycle(x, cycle_length, time_scale, origin = NULL)
}
\arguments{
\item{x}{A vector of dates or datetimes to convert. If not of type Date or POSIXct,
the function attempts to convert it.}

\item{cycle_length}{The length of the cycle. Can be a numeric value or a string
specifying the units ('year', 'month', 'day', 'hour', 'minute', 'second').
When numeric, the cycle length is in the same units as time_scale. When a string,
it specifies the time unit of the cycle.}

\item{time_scale}{Specifies the time scale for the conversion. Must be one of
'year', 'month', 'day', 'hour', 'minute', 'second'. When cycle_length is a string,
time_scale changes the unit in which the result is expressed.
When cycle_length is numeric, time_scale is used to compute the elapsed time in seconds.}

\item{origin}{For numeric cycle_length, the origin must be specified. This is the point
from which the elapsed time is computed. Must be of the same class as x.}
}
\value{
The numeric cycle value(s) corresponding to x.
}
\description{
This function takes a date or datetime and converts it to a numeric cycle.
The cycle can be specified in units of years, months, days, hours, minutes, or seconds.
When cycle_length is a string, time_scale only changes the unit in which the result is expressed.
When cycle_length is numeric, time_scale and origin are used to compute the elapsed time.
}
\examples{
date_to_numeric_cycle(Sys.time(), "year", "day") # Returns the day of the year
date_to_numeric_cycle(Sys.time(), "day", "hour") # Returns the hour of the day
}
