\name{render}
\alias{render}
\title{Render R Markdown}
\usage{
render(input, output, output.file = NULL, envir = parent.frame(),
  quiet = FALSE, encoding = getOption("encoding"))
}
\arguments{
  \item{input}{Input file (Rmd or plain markdown)}

  \item{output}{R Markdown output format to convert to (see
  \code{\link{output_format}}).}

  \item{output.file}{Output file (if not specified then a
  default based on the specified output format is chosen)}

  \item{envir}{The environment in which the code chunks are
  to be evaluated during knitting (can use
  \code{\link{new.env}()} to guarantee an empty new
  environment)}

  \item{quiet}{\code{TRUE} to supress printing of the
  pandoc command line}

  \item{encoding}{the encoding of the input file; see
  \code{\link{file}}}
}
\value{
The compiled document is written into the output file, and
the path of the output file is returned.
}
\description{
Render the input file to the specified output format using
pandoc. If the input requires knitting then
\code{\link[knitr:knit]{knit}} is called prior to pandoc.
}
\section{R Markdown}{
  R Markdown supports all of the base pandoc markdown
  features as well as some optional features for
  compatibility with GitHub Flavored Markdown (which
  previous versions of R Markdown were based on).

  For more on pandoc markdown see the
  \href{http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html}{pandoc
  markdown specification}. Optional pandoc markdown
  features enabled include \code{autolink_bare_uris},
  \code{ascii_identifiers}, and
  \code{tex_math_single_backslash}.
}
\seealso{
\link[knitr:knit]{knit}, \link{output_format},
\href{http://johnmacfarlane.net/pandoc}{pandoc}
}
