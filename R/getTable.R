#'  Downloading datasets from the siat.stat.uz
#'
#'  Downloads available datasets and related information from siat.stat.uz API
#'
#' @param id a numeric or character that represents a dataset identifier
#' @author Alisher Suyunov
#'
#' @import dplyr tidyr httr jsonlite rlist tibble
#' @importFrom glue glue
#' @importFrom jsonlite fromJSON
#'
#' @return Returns a data frame
#' @export
#'
#'
#' @examples
#'  \dontrun{
#'  getTable("2540")
#'  getMetaData("2540") }
#' @describeIn getTable Downloads the specified dataset as a data frame.
#' @export
getTable <- function(id) {
  dt <- httr::GET(glue::glue("https://api.siat.stat.uz/sdmx/{id}/table/")) %>% httr::content(encoding = "json")
  dt %>% lapply(flattenData) %>% bind_rows() %>% tidyr::unnest("data") %>% return()
}

#' @keywords internal
flattenData <- function(x) {
  x$data <- x$data %>% rlist::list.flatten() %>% tibble::as_tibble_row()
  x %>% return()
}
