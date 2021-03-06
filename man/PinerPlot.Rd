% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/PinerPlot.R
\name{PinerPlot}
\alias{PinerPlot}
\title{Make plot of likelihood contributions by fleet}
\usage{
PinerPlot(summaryoutput, plot = TRUE, print = FALSE,
  component = "Length_like",
  main = "Changes in length-composition likelihoods by fleet",
  models = "all", fleets = "all", fleetnames = "default",
  profile.string = "R0", profile.label = expression(log(italic(R)[0])),
  ylab = "Change in -log-likelihood", col = "default", pch = "default",
  lty = 1, lty.total = 1, lwd = 2, lwd.total = 3, cex = 1,
  cex.total = 1.5, xlim = "default", ymax = "default", xaxs = "r",
  yaxs = "r", type = "o", legend = TRUE, legendloc = "topright",
  pwidth = 6.5, pheight = 5, punits = "in", res = 300, ptsize = 10,
  cex.main = 1, plotdir = NULL, verbose = TRUE, fleetgroups = NULL,
  likelihood_type = "raw_times_lambda", minfraction = 0.01)
}
\arguments{
\item{summaryoutput}{List created by the function
\code{\link{SSsummarize}}.}

\item{plot}{Plot to active plot device?}

\item{print}{Print to PNG files?}

\item{component}{Which likelihood component to plot. Default is "Length_like".}

\item{main}{Title for plot. Should match component.}

\item{models}{Optional subset of the models described in
\code{summaryoutput}.  Either "all" or a vector of numbers indicating
columns in summary tables.}

\item{fleets}{Optional vector of fleet numbers to include.}

\item{fleetnames}{Optional character vector of names for each fleet.}

\item{profile.string}{Character string used to find parameter over which the
profile was conducted. Needs to match substring of one of the SS parameter
labels found in the Report.sso file. For instance, the default input 'steep'
matches the parameter 'SR_BH_steep'.}

\item{profile.label}{Label for x-axis describing the parameter over which
the profile was conducted.}

\item{ylab}{Label for y-axis. Default is "Change in -log-likelihood".}

\item{col}{Optional vector of colors for each line.}

\item{pch}{Optional vector of plot characters for the points.}

\item{lty}{Line total for the liklihood components.}

\item{lty.total}{Line type for the total likelihood.}

\item{lwd}{Line width for the liklihood components.}

\item{lwd.total}{Line width for the total likelihood.}

\item{cex}{Character expansion for the points representing the likelihood
components.}

\item{cex.total}{Character expansion for the points representing the total
likelihood.}

\item{xlim}{Range for x-axis. Change in likelihood is calculated relative to
values within this range.}

\item{ymax}{Maximum y-value. Default is 10\% greater than largest value
plotted.}

\item{xaxs}{The style of axis interval calculation to be used for the x-axis
(see ?par for more info)}

\item{yaxs}{The style of axis interval calculation to be used for the y-axis
(see ?par for more info).}

\item{type}{Line type (see ?plot for more info).}

\item{legend}{Include legend?}

\item{legendloc}{Location of legend (see ?legend for more info).}

\item{pwidth}{Width of plot}

\item{pheight}{Height of plot}

\item{punits}{Units for PNG file}

\item{res}{Resolution for PNG file}

\item{ptsize}{Point size for PNG file}

\item{cex.main}{Character expansion for plot titles}

\item{plotdir}{Directory where PNG files will be written. by default it will
be the directory where the model was run.}

\item{verbose}{Return updates of function progress to the R GUI? (Doesn't do
anything yet.)}

\item{fleetgroups}{Optional character vector, with length equal to
the number of declared fleets, where fleets with the same value are
aggregated}

\item{likelihood_type}{choice of "raw" or "raw_times_lambda" (the default)
determines whether or not likelihoods plotted are adjusted by lambdas
(likelihood weights)}

\item{minfraction}{Minimum change in likelihood (over range considered) as a
fraction of change in total likelihood for a component to be included in the
figure.}
}
\description{
This style of plot was officially named a "Piner Plot" at the
CAPAM Selectivity Workshop, La Jolla March 2013. This is in
honor of Kevin Piner's contributions to interpreting likelihood
profiles. He's surely not the first person to make such a plot
but the name seems to have stuck.
}
\author{
Ian Taylor, Kevin Piner, Jim Thorson
}
\references{
Kevin Piner says that he's not the originator of this idea so
Athol Whitten is going to add a reference here.
}

