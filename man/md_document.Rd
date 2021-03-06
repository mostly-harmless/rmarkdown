\name{md_document}
\alias{md_document}
\title{Convert to a markdown document}
\usage{
md_document(variant = "markdown_strict", toc = FALSE, toc_depth = 3,
  fig_width = 7, fig_height = 5, fig_retina = NULL, includes = NULL,
  data_dir = NULL, pandoc_args = NULL)
}
\arguments{
  \item{variant}{Markdown variant to produce (defaults to
  "markdown_strict").  Other valid values are
  "markdown_github", "markdown_mmd", markdown_phpextra", or
  even "markdown" (which produces pandoc markdown).  You
  can also compose custom markdown variants, see the
  documentation on
  \href{http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html}{pandoc's
  markdown} for details.}

  \item{fig_retina}{Scaling to perform for retina displays.
  Defaults to \code{NULL} which performs no scaling. A
  setting of 2 will work for all widely used retina
  displays, but will also result in the output of
  \code{<img>} tags rather than markdown images due to the
  need to set the width of the image explicitly. Note that
  this only takes effect if you are using knitr >= 1.5.21.}

  \item{toc}{\code{TRUE} to include a table of contents in
  the output}

  \item{toc_depth}{Depth of headers to include in table of
  contents}

  \item{fig_width}{Default width (in inches) for figures}

  \item{fig_height}{Default width (in inches) for figures}

  \item{includes}{Named list of additional content to
  include within the document (typically created using the
  \code{\link{includes}} function).}

  \item{data_dir}{Additional directory to resolve relatives
  paths of templates and included content against (the
  directory of the input file is used by default).}

  \item{pandoc_args}{Additional command line options to
  pass to pandoc}
}
\value{
R Markdown output format to pass to \code{\link{render}}
}
\description{
Format for converting from R Markdown to another variant of
markdown (e.g. strict markdown or github flavored markdown)
}
\details{
R Markdown documents can have optional metadata that is
used to generate a document header that includes the title,
author, and date. Metadata can also be provided to enable
the use of footnotes and bibliographies. For more details
see the documentation on R Markdown
\link[=rmd_metadata]{metadata} and
\link[=rmd_citations]{citations}.
}
\examples{
\dontrun{

library(rmarkdown)

render("input.Rmd", md_document())

render("input.Rmd", md_document(variant = "github_flavored_markdown"))
}
}

