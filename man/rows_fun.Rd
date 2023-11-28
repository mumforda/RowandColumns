\name{rows_fun}
\alias{rows_fun}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{function to remove rows with all 0's}
\description{A function to remove rows where all the entries are 0.}
\usage{
rows_fun(r)
}


\author{
Aislinn Mumford
}


\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (r)
{
    zero_rows <- apply(r, MARGIN = 1, function(row) all(row ==
        0))
    r <- r[!zero_rows, ]
    return(r)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
