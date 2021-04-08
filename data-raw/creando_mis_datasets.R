#- creando los datasets q voy alojando en el pkg ----------------
library(tidyverse)

#- datos de población municipal -----------------
pob_1996_2020 <- readr::read_rds("/home/pjpv/Escritorio/my_datos_2021/datos/INE/pob_mun/ine_pob_mun_1996_2020.rds")
pob_muni_1996_2020 <- pob_1996_2020 %>%
  pivot_wider(names_from = poblacion, values_from = values) %>%
  dplyr::rename(pob_total = Total) %>%
  dplyr::rename(pob_hombres = Hombres) %>%
  dplyr::rename(pob_mujeres = Mujeres) %>%
  select(1:4, pob_total, pob_hombres, pob_mujeres, everything())

zz <- pob_muni_1996_2020 %>% group_by(year) %>% count()
str(pob_muni_1996_2020)
#- usethis::use_data(pob_muni_1996_2020, overwrite = TRUE)  #- 2021-04-08

#- datos de población provincial -----------------
pob_muni <- pjpv.datos.01::pob_muni_1996_2020
pob_prov_1996_2020 <- pob_muni %>%
  select(ine_prov, ine_prov.n, year, pob_total, pob_hombres, pob_mujeres, ine_ccaa, ine_ccaa.n) %>%
  group_by(year, ine_prov) %>%
  #mutate(across(where(is.numeric), sum))  %>%  #- suma la pob municipal (uso where()
  mutate(across(starts_with("pob_"), sum)) %>%  #- suma la pob municipal
  distinct() %>%
  ungroup()

zz <- pob_prov_1996_2020 %>% group_by(year) %>% count()


str(pob_prov_1996_2020)
#- usethis::use_data(pob_prov_1996_2020, overwrite = TRUE)  #- 2021-04-08



#- datos de población por CC.AA -----------------
pob_muni <- pjpv.datos.01::pob_muni_1996_2020
pob_ccaa_1996_2020 <- pob_muni %>%
  select(ine_ccaa, ine_ccaa.n, year, pob_total, pob_hombres, pob_mujeres) %>%
  group_by(year, ine_ccaa) %>%
  #mutate(across(where(is.numeric), sum))  %>%  #- suma la pob municipal (uso where()
  mutate(across(starts_with("pob_"), sum)) %>%  #- suma la pob municipal
  distinct() %>%
  ungroup()

zz <- pob_ccaa_1996_2020 %>% group_by(year) %>% count()


str(pob_ccaa_1996_2020)
#- usethis::use_data(pob_ccaa_1996_2020, overwrite = TRUE)  #- 2021-04-08
