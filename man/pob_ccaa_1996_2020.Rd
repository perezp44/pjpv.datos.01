% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/document_data.R
\docType{data}
\name{pob_ccaa_1996_2020}
\alias{pob_ccaa_1996_2020}
\title{Población por CC.AA  del INE. (Spain)}
\format{
A tibble with 456 rows and 6 variables
\itemize{
\item ine_ccaa: Codigo INE de la CA (2 dígitos). Character
\item ine_ccaa.n: Nombre de la CA. Character
\item year: año. Numeric
\item pob_total: Población total. Numeric
\item pob_hombres: Población de hombres. Numeric
\item pob_mujeres: Población de mujeres. Numeric
}
}
\source{
\url{https://www.ine.es/pob_xls/pobmun.zip}

\url{https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177011&menu=resultados&idp=1254734710990}
}
\usage{
pob_ccaa_1996_2020
}
\description{
Población por CC.AA (SPAIN). Sacados del INE. Periodo: 1996 y 1998-2020.
Cifras oficiales de población de los municipios españoles: Revisión del Padrón Municipal.
}
\examples{
\dontrun{
 pob_ccaa_1996_2020 <- pob_ccaa_1996_2020
}

}
\keyword{datasets}
