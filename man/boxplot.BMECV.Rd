% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{boxplot.BMECV}
\alias{boxplot.BMECV}
\title{boxplot.BMECV}
\usage{
\method{boxplot}{BMECV}(x, select = "Pearson", ordered = TRUE, ...)
}
\arguments{
\item{x}{an \code{BMECV object} for which the plot of model is meaningful.}

\item{select}{\code{character} By default ('Pearson'), plot the Pearson Correlations of the BMECV Object, else ('MAAPE'), plot the MAAPE of the BMECV Object.}

\item{ordered}{\code{logic} The graph should be sorted by the median? by default is \code{TRUE}.}

\item{...}{Further arguments passed to or from other methods.}
}
\description{
Produce box-and-whisker plot(s) of the given BMECV object.
}
