# This function removes rows with all 0's in matrices.
#' @param r Input vector, should be a matrix
#' @export
#'

rows_fun <- function(r) {
  # Identify rows with all 0's
  zero_rows <- apply(r, MARGIN = 1, function(row) all(row == 0))

  # Remove rows with 0 values
  r <- r[!zero_rows, ]

  return(r)
}

