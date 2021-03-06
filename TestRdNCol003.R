# TestCDCCol003
col <- df$"Grupo"

test_that("Tipo de dato char?", {
  expect_true(is.character(col))
})

# Mostrar la frecuencia de cada categoria, ojo con los NA, blancos, e indefinidos. ~1311 blancos
u <- data.frame(table(col)); u
barplot(u$Freq~u$col)
# u$col %>% levels()

# Valores dentro de categor�as aceptadas?
# cat <- u$col; cat

cat <- c("FULL",
         "Indefinido",
         "PREMIUM",
         "START",
         "VIP"
         #,""             # muchas veces existir� un dato "" (blanco) sin categor�a, y no pasar� este test.
         )    

# comparar las categorias con la col para validar que contiene s�lo esas categor�as
col %in% cat

test_that("Valores dentro de categor�as aceptadas?", {
  expect_true(
    all(col %in% cat, na.rm=T) # all transforma el vector True en single True, arg na.rm quita los NA.
  )
})

# Est� bien que no pase si tiene "" (blancos), porque deben estar todas las categor�as definidas.

