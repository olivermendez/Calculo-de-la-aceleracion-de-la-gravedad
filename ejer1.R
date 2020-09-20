require(readr)
cat("\014", "Contenido del archivo mediciones.csv\n")
writeLines(readLines("mediciones.csv")) 
mediciones <- read_csv(file = "mediciones.csv", col_names = TRUE, progress = FALSE) # Lectura (carga) del archivo
mediciones