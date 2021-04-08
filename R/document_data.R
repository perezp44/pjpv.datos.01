#---- This file documents los ficheros de datos del pkg


#' Población municipal del INE. (Spain)
#'
#' Población municipal (SPAIN). Sacados del INE. Periodo: 1996 y 1998-2020.
#' Cifras oficiales de población de los municipios españoles: Revisión del Padrón Municipal.
#' Recuerda que los condominios se identifican  xq su código (ine_muni) empieza por 53.
#'
#' @source \url{https://www.ine.es/pob_xls/pobmun.zip}
#'
#' @format A tibble with 194.720 rows and 13 variables
#' \itemize{
#'   \item ine_muni: Codigo INE del municipio (5 dígitos). Character
#'   \item ine_muni.n: Nombre del municipio (en 2020). Character
#'   \item year: año. Numeric
#'   \item ine_muni.n.orig: Nombre del municipio (en el año corriente, year). Character
#'   \item pob_total: Población total. Numeric
#'   \item pob_hombres: Población de hombres. Numeric
#'   \item pob_mujeres: Población de mujeres. Numeric
#'   \item ine_prov: Codigo INE de la provincia (2 dígitos). Character
#'   \item ine_muni.n: Nombre de la provincia. Character
#'   \item ine_ccaa: Codigo INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item capital_prov: Identifica si el municipio es cápital de provincia. Factor
#'   \item capital_prov: Identifica si el municipio es cápital de CA. Factor
#'   }
#'
#' @examples
#' \dontrun{
#'  pob_muni_1996_2020 <- pob_muni_1996_2020
#' }
#'
"pob_muni_1996_2020"


