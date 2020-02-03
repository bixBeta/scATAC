# https://satijalab.org/signac/articles/pbmc_vignette.html
library(Signac)
library(Seurat)
library(GenomeInfoDb)
library(EnsDb.Hsapiens.v75)
library(ggplot2)
set.seed(1234)

library(dplyr)

counts <- Read10X_h5(filename = "vignette-data/atac_v1_pbmc_10k_filtered_peak_bc_matrix.h5")
metadata <- read.csv(
  file = "vignette-data/atac_v1_pbmc_10k_singlecell.csv",
  header = TRUE,
  row.names = 1
)
