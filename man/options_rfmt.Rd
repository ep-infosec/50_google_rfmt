% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rfmt.R
\name{options_rfmt}
\alias{getOption_rfmt}
\alias{options_rfmt}
\title{Set or retrieve options relating to the \code{rfmt} formatter.}
\usage{
options_rfmt(...)

getOption_rfmt(x, default = NULL)
}
\arguments{
\item{x}{a character string naming an \code{rfmt} option.}

\item{default}{value supplied if the specified option is not set (for
compatibility; not particularly applicable in this instance, because all 
\code{rfmt} options are set).}

\item{\ldots}{named arguments used to set option values. See below for the
available options. A single named list may also be provided.}
}
\description{
Though they are specific to the \code{rfmt} code formatter, these functions 
mirror \code{options} and \code{getOption} in base \R in their behavior.
}
\note{
For a description of the layout algorithm used in \code{rfmt}, look in
the \dQuote{User guides, package vignettes and other documentation} section
of the package documentation for the technical report 
\dQuote{A New Approach to Optimal Code Formatting}.
}
\section{Options and default values}{

\describe{
  \item{\code{backup}}{
    If \code{TRUE}, the formatter copies the source file \var{fn} to the
    file \var{fn}\code{.bak}. 
    Default: \code{TRUE}.
  }
  \item{\code{margin0}}{
    The offset (from the left-most column) of the \dQuote{soft} right margin
    (where the layout algorithm is encouraged to break lines).
    Default: \code{0}.
  }
  \item{\code{margin1}}{
    The offset (from the left-most column) of the \dQuote{hard} right margin
    (where the layout algorithm is mandated to break lines, if at all 
    possible).
    Default: \code{80}.
  }
  \item{\code{cost0}}{
    The cost of each character beyond the soft right margin, \code{margin0}.
    Default: \code{0.05}.
  }
  \item{\code{cost1}}{
    The cost of each character beyond the hard right margin, \code{margin1}.
    Default: \code{100}.
  }
  \item{\code{costb}}{
    The cost associated with the introduction of a newline.
    Default: \code{2}.
  }
  \item{\code{indent}}{
    The number of spaces introduced by each successive indent.
    Default: \code{2}.
  }
  \item{\code{force.brace}}{
    Whether to insert braces in \dQuote{control flow} constructs, such as 
    \code{if} or \code{while}, that lack them.
    Default: \code{FALSE}.
  }
  \item{\code{space.arg.eq}}{
    Whether to surround \dQuote{\code{=}} signs in argument lists with 
    spaces.
    Default: \code{TRUE}.
  }
  \item{\code{quiet}}{
    Whether to suppress output of all diagnostic information.
    Default: \code{TRUE}.
  }
  \item{\code{adj.comment}}{
    Multiplier applied to the cost of a newline when formatting comments.
    Default: \code{0.5}.
  }
  \item{\code{adj.flow}}{
    Multiplier applied to the cost of a newline when formatting 
    \dQuote{control flow} constructs, such as \code{if} or \code{while}.
    Default: \code{0.3}.
  }
  \item{\code{adj.call}}{
    Multiplier applied to the cost of a newline when formatting function
    calls.
    Default: \code{0.5}.
  }
  \item{\code{adj.arg}}{
    Multiplier applied to the cost of a newline when formatting argument
    expressions in function calls.
    Default: \code{5}.
  }
  \item{\code{cpack}}{
    Small penalty favoring justified layouts with elements packed onto
    earlier lines.
    Default: \code{1e-3}.
  }
}
}

