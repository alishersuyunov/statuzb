#'  Downloading datasets from the siat.stat.uz
#'
#'  Downloads available datasets and related information from siat.stat.uz API
#'
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
#' @describeIn availableData Obtains the list of available datasets from the siat.stat.uz
#' @export
availableData <- function()
{
  all_cats <- jsonlite::fromJSON("https://api.siat.stat.uz/sdmx/json/", flatten = TRUE)
  #aa <- all_cats %>% tidyr::unnest_longer(col = "children", simplify = TRUE, indices_to = "index1", values_to = "val1")
  #ab <- aa$val1  %>% tidyr::unnest_longer(col = "children", simplify = TRUE, indices_to = "index2", values_to = "val2")
  #ac <- ab$val2  %>% tidyr::unnest_longer(col = "children", simplify = TRUE, indices_to = "index3", values_to = "val3")

  #ad <- ac$val3

  all_cats %>% return()
}
