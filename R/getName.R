#'  Downloading datasets from the siat.stat.uz
#'
#'  Downloads available datasets and related information from siat.stat.uz API
#'
#' @param dataset_id a numeric or character that represents a dataset identifier
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
#' @describeIn getName Returns the name of the dataset under the given ID.
#' @export
getName <- function(dataset_id) {
  indicators <- availableData()
  df <- indicators %>% filter(id %in% dataset_id)
  return(df)
}
