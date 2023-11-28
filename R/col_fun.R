# This function removes rows with all 0's in matrices.
#' @param x Input vector, should be a matrix
#' @export

col_fun <- function(x) {
  # Identify columns with all 0's
  zero_col <- apply(x, MARGIN = 2, function(col) all(col == 0))

  # Remove columns with 0 values
  x <- x[, !zero_col]

  return(x)
}

