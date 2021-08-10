
library(readr)

# melhor prática devido à problemas de disponibilidade do website

download.file(
  url = "https://raw.githubusercontent.com/williamorim/brasileirao/master/data-raw/csv/matches.csv",
  destfile = "data-raw/csv/brasileiraoDownload"
)

# lendo o arquivo - pode ser feito diretamente do site - não indicado
brasileirao <- read_csv("data-raw/csv/brasileiraoDownload")

write_rds(brasileirao, "data/brasileirao.rds")

