test_that("Core table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_core("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_core("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_core("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_core("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_core("aut"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("can"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("cze"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("esp"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("fra"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("deu"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("irl"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("sco"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("gbr"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("usa_house"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_core("usa_senate"))[1:3], c("country", "pageid", "wikidataid"))
  Sys.sleep(1)

  expect_identical(sample(get_core("aut")$country, 1), "AUT")
  Sys.sleep(1)
  expect_identical(sample(get_core("can")$country, 1), "CAN")
  Sys.sleep(1)
  expect_identical(sample(get_core("cze")$country, 1), "CZE")
  Sys.sleep(1)
  expect_identical(sample(get_core("esp")$country, 1), "ESP")
  Sys.sleep(1)
  expect_identical(sample(get_core("fra")$country, 1), "FRA")
  Sys.sleep(1)
  expect_identical(sample(get_core("deu")$country, 1), "DEU")
  Sys.sleep(1)
  expect_identical(sample(get_core("irl")$country, 1), "IRL")
  Sys.sleep(1)
  expect_identical(sample(get_core("sco")$country, 1), "SCO")
  Sys.sleep(1)
  expect_identical(sample(get_core("gbr")$country, 1), "GBR")
  Sys.sleep(1)
  expect_identical(sample(get_core("usa_house")$country, 1), "USA-H")
  Sys.sleep(1)
  expect_identical(sample(get_core("usa_senate")$country, 1), "USA-S")
  Sys.sleep(1)
})

test_that("Political table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_political("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_political("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_political("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_political("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_political("aut"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("can"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("cze"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("esp"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("fra"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("deu"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("irl"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("sco"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("gbr"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("usa_house"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_political("usa_senate"))[1], c("pageid"))
  Sys.sleep(1)
})

test_that("Wikipedia History table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_history("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_history("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_history("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_history("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_history("aut"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("can"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("cze"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("esp"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("fra"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("deu"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("irl"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("sco"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("gbr"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("usa_house"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_history("usa_senate"))[1], c("pageid"))
  Sys.sleep(1)
})

test_that("Wikipedia Traffic table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_traffic("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_traffic("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_traffic("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_traffic("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_traffic("aut"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("can"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("cze"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("esp"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("fra"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("deu"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("irl"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("sco"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("gbr"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("usa_house"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_traffic("usa_senate"))[1], c("pageid"))
  Sys.sleep(1)
})

test_that("Social table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_social("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_social("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_social("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_social("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_social("aut"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("can"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("cze"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("esp"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("fra"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("deu"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("irl"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("sco"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("gbr"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("usa_house"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_social("usa_senate"))[1], c("wikidataid"))
  Sys.sleep(1)
})

test_that("Portraits table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_portrait("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_portrait("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_portrait("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_portrait("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_portrait("aut"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("can"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("cze"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("esp"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("fra"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("deu"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("irl"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("sco"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("gbr"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("usa_house"))[1], c("pageid"))
  Sys.sleep(1)
  expect_identical(colnames(get_portrait("usa_senate"))[1], c("pageid"))
  Sys.sleep(1)
})

test_that("Offices table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_office("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_office("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_office("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_office("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_office("aut"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("can"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("cze"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("esp"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("fra"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("deu"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("irl"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("sco"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("gbr"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("usa_house"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_office("usa_senate"))[1], c("wikidataid"))
  Sys.sleep(1)
})

test_that("Professions table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_profession("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_profession("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_profession("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_profession("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_profession("aut"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("can"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("cze"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("esp"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("fra"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("deu"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("irl"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("sco"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("gbr"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("usa_house"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_profession("usa_senate"))[1], c("wikidataid"))
  Sys.sleep(1)
})

test_that("IDs table is returned appropriately for each legislature", {
  skip_on_cran()
  expect_identical(class(get_ids("aut")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("can")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("cze")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("esp")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("fra")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("deu")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("irl")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("sco")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("gbr")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("usa_house")), "data.frame")
  Sys.sleep(1)
  expect_identical(class(get_ids("usa_senate")), "data.frame")
  Sys.sleep(1)

  expect_true(all(dim(get_ids("aut")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("can")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("cze")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("esp")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("fra")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("deu")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("irl")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("sco")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("gbr")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("usa_house")) > 0))
  Sys.sleep(1)
  expect_true(all(dim(get_ids("usa_senate")) > 0))
  Sys.sleep(1)

  expect_identical(colnames(get_ids("aut"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("can"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("cze"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("esp"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("fra"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("deu"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("irl"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("sco"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("gbr"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("usa_house"))[1], c("wikidataid"))
  Sys.sleep(1)
  expect_identical(colnames(get_ids("usa_senate"))[1], c("wikidataid"))
  Sys.sleep(1)
})

test_that("Error is returned when legislature argument is not specified", {
  skip_on_cran()
  expect_error(get_core())
  expect_error(get_political())
  expect_error(get_history())
  expect_error(get_traffic())
  expect_error(get_social())
  expect_error(get_portrait())
  expect_error(get_office())
  expect_error(get_profession())
  expect_error(get_ids())
})

test_that("Error is returned when legislature argument is not a valid country code", {
  skip_on_cran()
  expect_error(get_core(NA))
  expect_error(get_political(NA))
  expect_error(get_history(NA))
  expect_error(get_traffic(NA))
  expect_error(get_social(NA))
  expect_error(get_portrait(NA))
  expect_error(get_office(NA))
  expect_error(get_profession(NA))
  expect_error(get_ids(NA))

  expect_error(get_core("bla"))
  expect_error(get_political("bla"))
  expect_error(get_history("bla"))
  expect_error(get_traffic("bla"))
  expect_error(get_social("bla"))
  expect_error(get_portrait("bla"))
  expect_error(get_office("bla"))
  expect_error(get_profession("bla"))
  expect_error(get_ids("bla"))

  expect_error(get_core(2))
  expect_error(get_political(2))
  expect_error(get_history(2))
  expect_error(get_traffic(2))
  expect_error(get_social(2))
  expect_error(get_portrait(2))
  expect_error(get_office(2))
  expect_error(get_profession(2))
  expect_error(get_ids(2))

  expect_error(get_core(TRUE))
  expect_error(get_political(TRUE))
  expect_error(get_history(TRUE))
  expect_error(get_traffic(TRUE))
  expect_error(get_social(TRUE))
  expect_error(get_portrait(TRUE))
  expect_error(get_office(TRUE))
  expect_error(get_profession(TRUE))
  expect_error(get_ids(TRUE))
})

test_that("Error is returned when more than one country code is specified in legislature argument ", {
  skip_on_cran()
  expect_error(get_core(c("aut","deu")))
  expect_error(get_political(c("aut","deu")))
  expect_error(get_history(c("aut","deu")))
  expect_error(get_traffic(c("aut","deu")))
  expect_error(get_social(c("aut","deu")))
  expect_error(get_portrait(c("aut","deu")))
  expect_error(get_office(c("aut","deu")))
  expect_error(get_profession(c("aut","deu")))
  expect_error(get_ids(c("aut","deu")))
})



