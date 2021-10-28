# TestRdNCol001
# Login
col <- df$"Login"

test_that("Login unicas", {
  expect_true(length(unique(col)) == nrow(df) )
})

test_that("Tipo de dato char?", {
  expect_true(is.character(col))
})
  
# Est� bien que no pase el segundo test porque es numeric y queremos que sea char (string)