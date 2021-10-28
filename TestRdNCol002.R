# TestRdNCol002
# Group
col <- df$"Group"

test_that("Group unicas", {
  expect_true(length(unique(col)) == nrow(df) )
})

test_that("Tipo de dato char?", {
  expect_true(is.character(col))
})

# Está bien que no pase el segundo test porque es numeric y queremos que sea char (string)