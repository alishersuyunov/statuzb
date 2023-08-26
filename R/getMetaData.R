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
#' @describeIn getMetaData Downloads the corresponding meta-data for specified dataset as a data frame.
#' @export
getMetaData <- function(id)
{
  jsonlite::fromJSON(glue::glue("https://api.siat.stat.uz/sdmx/{id}/metadata/")) %>% rlist::list.clean() %>% .[["meta_data"]] %>% return()
}
