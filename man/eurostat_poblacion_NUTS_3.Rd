% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/document_data.R
\docType{data}
\name{eurostat_poblacion_NUTS_3}
\alias{eurostat_poblacion_NUTS_3}
\title{Poblacion EUROSTAT, NUTS 3. Tabla demo_r_pjanaggr3.}
\format{
A tibble with 137.718 rows and 7 variables
\itemize{
\item geo_code: Código de la región o país. Character
\item geo: Nombre de la región o país. Character
\item year: Año. 1990 to 2020. Numeric
\item sex: Total, Females, Males. Character
\item poblacion: Número de personas. Numeric
\item flags_code: código de flag. Character
\item iso_2_code: Código de la región o país (GB x UK) (GR x EL). Character
}
}
\source{
\url{https://github.com/rOpenSpain/LAU2boundaries4spain}
}
\usage{
eurostat_poblacion_NUTS_3
}
\description{
Population on 1 January by broad age group, sex and NUTS 3 region.
actualización de la tabla: 11.03.2021
Años: 1990 to 2020.
Sex: Total, Females, Males
Age: he quitado los grupos de edad
}
\examples{
\dontrun{
 eurostat_poblacion_NUTS_3 <- eurostat_poblacion_NUTS_3
}

}
\keyword{datasets}
