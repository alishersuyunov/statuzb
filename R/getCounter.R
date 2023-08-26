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
#' @describeIn getCounter Collects the number of the available datasets on the siat.stat.uz portal.
#' @export
getCounter <- function()
{
  counters <- jsonlite::fromJSON("https://api.siat.stat.uz/common/counters/") %>% tibble::as_tibble()
  return(counters)
}
