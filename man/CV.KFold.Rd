% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RandomPartition.R
\name{CV.KFold}
\alias{CV.KFold}
\title{Cross-Validation with K Folds}
\usage{
CV.KFold(DataSet, DataSetID = "Line", K = 5, set_seed = NULL)
}
\arguments{
\item{DataSet}{(\code{data.frame}) The object need contain three columns in the Tidy data format:
\code{$Line} is the Line or genotype identifier, and the name of this column could change.
\code{$Env} is the name of the evaluated environment (s).
\code{$Response} Variable response obtained for the row corresponding to line and environment.}

\item{DataSetID}{(\code{string}) The ID of the lines.}

\item{K}{(\code{integer}) Number of groups to the cross-validation.}

\item{set_seed}{(\code{integer}) Seed number for reproducible research. Is \code{NULL} by default}
}
\value{
Returns a nested list, with a positions to use as testing.
}
\description{
This method consists of randomly dividing the training data set and the test data set.
}
\examples{
\donttest{
data("WheatMadaToy")
phenoMada <- (phenoMada[order(phenoMada$GID),])
pheno <- data.frame(GID = phenoMada[, 1], Response = phenoMada[, 3])

CV.KFold(pheno)
CV.KFold(pheno, set_seed = 123)
CV.KFold(pheno, DataSetID = 'GID', set_seed = 123)
CV.KFold(pheno, DataSetID = 'GID', K = 10, set_seed = 123)
}

}
