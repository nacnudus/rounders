#' Round to a Gap of Given Width
#'
#' @param x numeric or integer vector
#' @param width defines how wide a 'gap' is
#'
#' @name round_gap
#' @examples
#' floor_gap(c(5, 7, 8, 11, 15, 17, 25), width = 3)
#' ceiling_gap(c(5, 7, 8, 11, 15, 17, 25), width = 3)
NULL

#' @rdname round_gap
#' @export
floor_gap <- function(x, width) {
  first <- x[1]
  last <- first
  out <- vector(class(x), length(x))
  for (i in seq_along(x)) {
    if (x[i] - last < width) {
      out[i] <- first
    } else {
      first <- x[i]
      out[i] <- first
    }
    last <- x[i]
  }
  out
}

#' @rdname round_gap
#' @export
ceiling_gap <- function(x, width) {
  x <- rev(x)
  first <- x[1]
  last <- first
  out <- vector(class(x), length(x))
  for (i in seq_along(x)) {
    if (last - x[i] < width) {
      out[i] <- first
    } else {
      first <- x[i]
      out[i] <- first
    }
    last <- x[i]
  }
  rev(out)
}
