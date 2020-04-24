## ----include = FALSE----------------------------------------------------------
LOCAL <- identical(Sys.getenv("LOCAL"), "TRUE")
knitr::opts_chunk$set(comment = "#>", collapse = TRUE, message = FALSE)

## ----eval = LOCAL-------------------------------------------------------------
#  library(legislatoR)
#  library(tibble)
#  
#  # get "Core" table for the United States House ------------------------------------------
#  usa_house_core <- get_core(legislature = "usa_house")
#  glimpse(usa_house_core)
#  
#  # get "Political" table for the German Bundestag ----------------------------------------
#  deu_political <- get_political(legislature = "deu")
#  glimpse(deu_political)
#  
#  # get "IDs" table for the Spanish Congreso ----------------------------------------------
#  esp_ids <- get_ids(legislature = "esp")
#  glimpse(esp_ids)

## ----eval = LOCAL-------------------------------------------------------------
#  library(dplyr)
#  
#  # combine "Core" and "Political" tables for the Irish Dail ------------------------------
#  irl_join <- left_join(x = get_core(legislature = "irl"),
#                        y = get_political(legislature = "irl"),
#                        by = "pageid")
#  glimpse(irl_join)
#  
#  # then add the "Social" table -----------------------------------------------------------
#  irl_join <- left_join(x = irl_join,
#                        y = get_social(legislature = "irl"),
#                        by = "wikidataid")
#  glimpse(irl_join)
#  
#  # get "Core" table for Scottish Liberal Democrats
#  sco_subset <- semi_join(x = get_core(legislature = "sco"),
#                          y = filter(get_political(legislature = "sco"),
#                                     party == "Scottish Liberal Democrats"),
#                          by = "pageid")
#  glimpse(sco_subset)
#  
#  # combine "Core" and "Political" tables for German Bundestag CDU/CSU and AfD members ----
#  deu_subset <- inner_join(x = get_core(legislature = "deu"),
#                           y = filter(get_political(legislature = "deu"),
#                                      party %in% c("CDU", "CSU", "AfD")),
#                           by = "pageid")
#  glimpse(deu_subset)
#  
#  # combine "Core" and "Political" tables for female legislators from the 37th Canadian
#  # House of Commons ----------------------------------------------------------------------
#  can_subset <- inner_join(x = filter(get_core(legislature = "can"), sex == "female"),
#                           y = filter(get_political(legislature = "can"), session == 37),
#                           by = "pageid")
#  glimpse(can_subset)
#  
#  # combine "Core", "Traffic", and "Social" tables for UK House Commons members with
#  # Twitter handles -----------------------------------------------------------------------
#  uk_subset <- left_join(x = inner_join(x = get_core(legislature = "gbr"),
#                                        y = filter(get_social(legislature = "gbr"), !is.na(twitter)),
#                                        by = "wikidataid"),
#                         y = get_traffic(legislature = "gbr"),
#                         by = "pageid")
#  glimpse(uk_subset)

## ----eval = LOCAL-------------------------------------------------------------
#  library(magrittr)
#  
#  # combine "Core", "IDs", and "Portraits" tables for the Austrian Nationalrat ------------
#  aut_join <- get_core(legislature = "aut") %>%
#    left_join(get_ids(legislature = "aut"),
#              by = "wikidataid") %>%
#    left_join(get_portrait(legislature = "aut"),
#              by = "pageid")
#  glimpse(aut_join)
#  
#  # get "Core" table for high-profile politicians (top 1% of Wikipedia page views) of
#  # French Assemblée ----------------------------------------------------------------------
#  fra_subset <- get_traffic(legislature = "fra") %>%
#    group_by(pageid) %>%
#    summarise(total_traffic = sum(traffic)) %>%
#    filter(total_traffic >= quantile(total_traffic, probs = 0.99)) %>%
#    semi_join(x = get_core(legislature = "fra"),
#              y = .,
#              by = "pageid")
#  glimpse(fra_subset)

## ----eval = LOCAL-------------------------------------------------------------
#  library(stringr)
#  
#  # import ParlSpeech example and rename ID to match CLD ----------------------------------
#  parlspeech_example <- readRDS("parlspeech_example") %>%
#    rename(parlspeech = speaker)
#  
#  # remove whitespace from start and end of the ID in ParlSpeech --------------------------
#  parlspeech_example$parlspeech <- str_trim(parlspeech_example$parlspeech)
#  
#  # integrate CLD with ParlSpeech example -------------------------------------------------
#  esp_speeches <- get_core(legislature = "esp") %>%
#    left_join(get_ids(legislature = "esp"),
#              by = "wikidataid") %>%
#    filter(!is.na(parlspeech)) %>%
#    inner_join(parlspeech_example,
#               by = "parlspeech")
#  
#  # import Database of Parliamentary Speeches in Ireland example and rename ID ------------
#  dpsi_example <- readRDS("dpsi_example") %>%
#    rename(dpsi = memberID)
#  
#  # integrate CLD with ParlSpeech example -------------------------------------------------
#  irl_speeches <- get_core(legislature = "irl") %>%
#    inner_join(filter(get_political(legislature = "irl"), session == 28),
#              by = "pageid") %>%
#    left_join(get_ids(legislature = "irl"),
#              by = "wikidataid") %>%
#    inner_join(dpsi_example,
#               by = "dpsi")

## ----eval = LOCAL-------------------------------------------------------------
#  library(purrr)
#  
#  # get "Core" table for all legislatures -------------------------------------------------
#  all_core <- cld_content() %>%
#    names() %>%
#    map(get_core)
#  glimpse(all_core)
#  
#  # get "Core" and "Political" tables for last three sessions of all legislatures ----------
#  recent_sessions <- cld_content() %>%
#    names() %>%
#    map(~ {
#      get_core(legislature = .x) %>%
#        inner_join(filter(get_political(legislature = .x),
#                          session %in% tail(cld_content(.x)[[1]], 3)),
#                   by = "pageid")
#    })
#  glimpse(recent_sessions)

## ----eval = FALSE-------------------------------------------------------------
#  library(haven)
#  
#  # save data as .csv for use with Excel --------------------------------------------------
#  write.csv(fra_subset, "fra_subset.csv")
#  
#  # save data as .sas for use with SAS ----------------------------------------------------
#  write_sas(sco_subset, "sco_subset.sas")
#  
#  # save data as .dta for use with STATA --------------------------------------------------
#  write_dta(irl_join, "irl_join.dta")
#  
#  # save data as .sav for use with SPSS ---------------------------------------------------
#  write_sav(esp_speeches, "esp_speeches.sav")

