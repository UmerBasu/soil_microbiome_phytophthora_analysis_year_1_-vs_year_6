# Soil Microbiome Analysis: Phytophthora nicotianae 

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18154363.svg)](https://doi.org/10.5281/zenodo.18154363)

## Overview
Analysis scripts for: "Ecological and Genomic Dynamics of the Soil Microbiome Under Sustained Pressure from Phytophthora nicotianae, the Causal Agent of Tobacco Black Shank Disease"

## Data Availability
Annotation datasets available on Zenodo:

- [1_Gene_IDs.csv](https://zenodo.org/record/18154363/files/1_Gene_IDs.csv) - Gene identifier mappings
- [2_ARDB.csv](https://zenodo.org/record/18154363/files/2_ARDB.csv) - Antibiotic resistance annotations
- [3_CAZy.csv](https://zenodo.org/record/18154363/files/3_CAZy.csv) - Carbohydrate-active enzyme annotations
- [4_COG.csv](https://zenodo.org/record/18154363/files/4_COG.csv) - Functional category annotations

DOI: [10.5281/zenodo.18154363](https://doi.org/10.5281/zenodo.18154363)

## Scripts
R scripts in `scripts/` directory:

- `1_gene_analysis.R` - Gene identifier analysis
- `2_ardb_analysis.R` - Antibiotic resistance analysis  
- `3_cazy_analysis.R` - CAZy enzyme analysis
- `4_cog_analysis.R` - Functional category analysis
- `master_analysis.R` - Complete analysis pipeline

## Usage
```r
source("scripts/master_analysis.R")
run_complete_analysis()
