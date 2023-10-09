# MAGT
# Correlación
# 02/10/2023
library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

plot(erupciones$waiting, erupciones$eruptions)
