#' Generate frequency tables of different variables
#'
#' @param dat Dataset
#' @param var Variable
#'
#' @return Frequency table
#' @export
#' @importFrom dplyr %>%
#' @importFrom dplyr group_by_
#' @importFrom dplyr count
#' @examples
#' naijatables(infert, "parity")
naijatables <- function(dat, var){
  df <- dat %>%
    group_by_(var) %>%
    count()
  return(df)
}
