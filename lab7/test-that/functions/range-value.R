range_value <- function(x, na.rm = FALSE) {
  y = c()
  if (na.rm) {
    for (item in x) {
      if (! is.na(item)) {
        y = append(y,item)
      }
    }
    return(max(y) - min(y))
  } else {
    return (max(x) - min(x))
  }
}
