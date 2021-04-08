#---- This file documents los ficheros de datos del pkg

#- Poblacion ----------------

#' Población municipal del INE. (Spain)
#'
#' Población municipal (SPAIN). Sacados del INE. Periodo: 1996 y 1998-2020.
#' Cifras oficiales de población de los municipios españoles: Revisión del Padrón Municipal.
#' Recuerda que los condominios se identifican porque su código (ine_muni) empieza por 53.
#'
#' @source \url{https://www.ine.es/pob_xls/pobmun.zip}
#' @source \url{https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177011&menu=resultados&idp=1254734710990}
#'
#' @format A tibble with 194.720 rows and 13 variables
#' \itemize{
#'   \item ine_muni: Código INE del municipio (5 dígitos). Character
#'   \item ine_muni.n: Nombre del municipio (en 2020). Character
#'   \item year: año. Numeric
#'   \item ine_muni.n.orig: Nombre del municipio (en el año corriente, year). Character
#'   \item pob_total: Población total. Numeric
#'   \item pob_hombres: Población de hombres. Numeric
#'   \item pob_mujeres: Población de mujeres. Numeric
#'   \item ine_prov: Codigo INE de la provincia (2 dígitos). Character
#'   \item ine_prov.n: Nombre de la provincia. Character
#'   \item ine_ccaa: Código INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item capital_prov: Identifica si el municipio es capital de provincia. Factor
#'   \item capital_ccaa: Identifica si el municipio es capital de CA. Factor
#'   }
#'
#' @examples
#' \dontrun{
#'  pob_muni_1996_2020 <- pob_muni_1996_2020
#' }
#'
"pob_muni_1996_2020"



#' Población provincial del INE. (Spain)
#'
#' Población provincial (SPAIN). Sacados del INE. Periodo: 1996 y 1998-2020.
#' Cifras oficiales de población de los municipios españoles: Revisión del Padrón Municipal.
#'
#' @source \url{https://www.ine.es/pob_xls/pobmun.zip}
#' @source \url{https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177011&menu=resultados&idp=1254734710990}
#'
#' @format A tibble with 1.248 rows and 8 variables
#' \itemize{
#'   \item ine_prov: Código INE de la provincia (2 dígitos). Character
#'   \item ine_prov.n: Nombre de la provincia. Character
#'   \item year: año. Numeric
#'   \item pob_total: Población total. Numeric
#'   \item pob_hombres: Población de hombres. Numeric
#'   \item pob_mujeres: Población de mujeres. Numeric
#'   \item ine_ccaa: Codigo INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   }
#'
#' @examples
#' \dontrun{
#'  pob_prov_1996_2020 <- pob_prov_1996_2020
#' }
#'
"pob_prov_1996_2020"




#' Población por CC.AA  del INE. (Spain)
#'
#' Población por CC.AA (SPAIN). Sacados del INE. Periodo: 1996 y 1998-2020.
#' Cifras oficiales de población de los municipios españoles: Revisión del Padrón Municipal.
#'
#' @source \url{https://www.ine.es/pob_xls/pobmun.zip}
#' @source \url{https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177011&menu=resultados&idp=1254734710990}
#'
#' @format A tibble with 456 rows and 6 variables
#' \itemize{
#'   \item ine_ccaa: Codigo INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item year: año. Numeric
#'   \item pob_total: Población total. Numeric
#'   \item pob_hombres: Población de hombres. Numeric
#'   \item pob_mujeres: Población de mujeres. Numeric
#'   }
#'
#' @examples
#' \dontrun{
#'  pob_ccaa_1996_2020 <- pob_ccaa_1996_2020
#' }
#'
"pob_ccaa_1996_2020"


#- LAU2 geometrias ---------------------------------

#' Geometrías municipales 2020, de LAU2boundaries4Spain. (Spain)
#'
#' Geometrías municipales 2020 (SPAIN). Sacados del package LAU2boundaries4Spain.
#' Hay 8.131 municipios + 81 condominios = 8.212 filas
#' Recuerda que he desplazado Canarias
#' Recuerda que hay dos tipos de centroides. Desplazados y no
#' X e Y (sin desplazar, bueno Canarias sí está desplazada)
#' X1 e Y1 (desplazados Ceuta y Melilla para q se vean bien en los mapas)
#'
#' @source \url{https://github.com/rOpenSpain/LAU2boundaries4spain}
#'
#' @format An sf data.frame with 8.212 rows and 16 variables
#' \itemize{
#'   \item ine_muni: Código INE del municipio (5 dígitos). Character
#'   \item ine_muni.n: Nombre del municipio. Character. Los condominios son NA's
#'   \item ine_prov: Codigo INE de la provincia (2 dígitos). Character
#'   \item ine_prov.n: Nombre de la provincia. Character
#'   \item ine_ccaa: Código INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item capital_prov: Identifica si el municipio es capital de provincia. Factor
#'   \item capital_ccaa: Identifica si el municipio es capital de CA. Factor
#'   \item pob_2020: Población municipal total. Numeric
#'   \item ine_muni.n.condo: Nombre del municipio y de los condominios. Character
#'   \item ine_ccaa.n.pjp: Nombre de la CA no oficial pero good. Character
#'   \item X: Centroide (X). Numeric
#'   \item Y: Centroide (Y). Numeric
#'   \item geometry: geometría de los municipios. sfc_MULTIPOLYGON
#'   \item X1: Centroide (X) pero desplazado para Ceuta y Melilla. Numeric
#'   \item Y1: Centroide (Y) pero desplazado para Ceuta y Melilla. Numeric
#'   }
#'
#' @examples
#' \dontrun{
#'  LAU2_muni_2020_canarias <- LAU2_muni_2020_canarias
#' }
#'
"LAU2_muni_2020_canarias"



#' Geometrías provinciales 2020, de LAU2boundaries4Spain. (Spain)
#'
#' Geometrías municipales 2020 (SPAIN). Sacados del package LAU2boundaries4Spain.
#' Recuerda que he desplazado Canarias
#' Recuerda que hay dos tipos de centroides.
#' X e Y (sin desplazar, bueno Canarias sí está desplazada)
#' X1 e Y1 (desplazados Ceuta y Melilla para q se vean bien e los mapas)
#'
#' @source \url{https://github.com/rOpenSpain/LAU2boundaries4spain}
#'
#' @format An sf data.frame with 52 rows and 10 variables
#' \itemize{
#'   \item ine_prov: Codigo INE de la provincia (2 dígitos). Character
#'   \item ine_prov.n: Nombre de la provincia. Character
#'   \item ine_ccaa: Código INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item pob_2020: Población provincial total. Numeric
#'   \item ine_ccaa.n.pjp: Nombre de la CA no oficial pero good. Character
#'   \item X: Centroide (X). Numeric
#'   \item Y: Centroide (Y). Numeric
#'   \item geometry: geometría provincial. sfc_GEOMETRY
#'   \item X1: Centroide (X) pero desplazado para Ceuta y Melilla. Numeric
#'   \item Y1: Centroide (Y) pero desplazado para Ceuta y Melilla. Numeric
#'   }
#'
#' @examples
#' \dontrun{
#'  LAU2_prov_2020_canarias <- LAU2_prov_2020_canarias
#' }
#'
"LAU2_prov_2020_canarias"



#' Geometrías para las CC.AA, 2020, de LAU2boundaries4Spain. (Spain)
#'
#' Geometrías municipales 2020 (SPAIN). Sacados del package LAU2boundaries4Spain.
#' Recuerda que he desplazado Canarias
#' Recuerda que hay dos tipos de centroides.
#' X e Y (sin desplazar, bueno Canarias sí está desplazada)
#' X1 e Y1 (desplazados Ceuta y Melilla para q se vean bien e los mapas)
#'
#' @source \url{https://github.com/rOpenSpain/LAU2boundaries4spain}
#'
#' @format An sf data.frame with 19 rows and 8 variables
#' \itemize{
#'   \item ine_ccaa: Código INE de la CA (2 dígitos). Character
#'   \item ine_ccaa.n: Nombre de la CA. Character
#'   \item pob_2020: Población por CC.AA  total. Numeric
#'   \item ine_ccaa.n.pjp: Nombre de la CA no oficial pero good. Character
#'   \item X: Centroide (X). Numeric
#'   \item Y: Centroide (Y). Numeric
#'   \item geometry: geometría provincial. sfc_GEOMETRY
#'   \item X1: Centroide (X) pero desplazado para Ceuta y Melilla. Numeric
#'   \item Y1: Centroide (Y) pero desplazado para Ceuta y Melilla. Numeric
#'   }
#'
#' @examples
#' \dontrun{
#'  LAU2_ccaa_2020_canarias <- LAU2_ccaa_2020_canarias
#' }
#'
"LAU2_ccaa_2020_canarias"

