\name{col_fun}
\alias{col_fun}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{function to remove columns with all 0's}
\description{Removes columns with all 0's}
\usage{
col_fun(x)
}

\author{Aislinn Mumford}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x)
{
    zero_col <- apply(x, MARGIN = 2, function(col) all(col ==
        0))
    x <- x[, !zero_col]
    return(x)
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
