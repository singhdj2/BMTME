% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RandomPartition.R
\name{CV.RandomPart}
\alias{CV.RandomPart}
\title{Cross-Validation with Random Partitions}
\usage{
CV.RandomPart(DataSet, NPartitions = 10, PTesting = 0.35,
  Traits.testing = NULL, set_seed = NULL)
}
\arguments{
\item{DataSet}{\code{data.frame} The data set object is a data.frame object that contains 4 columns in the Tidy data format:
\code{$Line} is the Line or genotype identifier, and the name of this column could change.
\code{$Env} is the name of the evaluated environment (s).
\code{$Trait} is the name of the evaluated trait (s).
\code{$Response} Variable response obtained for the row corresponding to line, trait and environment.}

\item{NPartitions}{\code{integer} Number of Partitions for the Cross-Validation. Is 10 by default.}

\item{PTesting}{\code{Double} Percentage of Testing for the Cross-Validation. Is 0.35 by default.}

\item{Traits.testing}{\code{character} By default is null and use all the traits to fit the model, else only part of the traits specified be used to fit the model.}

\item{set_seed}{\code{integer} Seed number for reproducible research. Is \code{NULL} by default.}
}
\value{
\code{List} A list object with length of \code{NPartitions}, every index has a the positions to use like testing.
}
\description{
This method consists of randomly dividing the training data set and the test data set.
For each division, the approximation function is adjusted from the training data and calculates the output values for the test data set.
The result corresponds to the arithmetic mean of the values obtained for the different divisions.
}
\examples{
\donttest{
  library(BMTME)
  data("WheatIranianToy")
  phenoIranianToy <- phenoIranianToy[order(phenoIranianToy$Env, phenoIranianToy$GID), ]
  pheno <- data.frame(GID = phenoIranianToy[, 1], Env = phenoIranianToy$Env,
                      Trait = rep(colnames(phenoIranianToy)[3:4], each = dim(phenoIranianToy)[1]),
                      Response = c(phenoIranianToy[, 3], phenoIranianToy[, 4]))

  CV.RandomPart(pheno)
  CV.RandomPart(pheno, NPartitions = 10)
  CV.RandomPart(pheno, Traits.testing = 'DTM')
  CV.RandomPart(pheno, NPartitions = 10, PTesting = .35)
  CV.RandomPart(pheno, NPartitions = 10, Traits.testing = 'DTH')
  CV.RandomPart(pheno, NPartitions = 10, PTesting = .35, set_seed = 5)
  CV.RandomPart(pheno, NPartitions = 10, PTesting = .35, Traits.testing = 'DTH')
  CV.RandomPart(pheno, NPartitions = 10, PTesting = .35, Traits.testing = 'DTM', set_seed = 5 )
}
}
