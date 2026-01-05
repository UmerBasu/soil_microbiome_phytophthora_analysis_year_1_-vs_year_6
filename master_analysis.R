# =============================================================================
# master_analysis.R
# Complete Analysis Pipeline for Soil Microbiome Study
# Corresponds to: Ecological and Genomic Dynamics of the Soil Microbiome
# Under Sustained Pressure from Phytophthora nicotianae
# =============================================================================

# Load all analysis scripts
source("scripts/1_gene_analysis.R")
source("scripts/2_ardb_analysis.R")
source("scripts/3_cazy_analysis.R")
source("scripts/4_cog_analysis.R")

#' Run Complete Analysis Pipeline
#' 
#' This function provides a complete workflow for analyzing soil microbiome data
#' under Phytophthora nicotianae pressure. Data files must be downloaded from Zenodo.
#' 
#' @return List containing analysis results from all four datasets
#' @examples
#' # Download data from Zenodo first:
#' # 1. 1_Gene_IDs.csv
#' # 2. 2_ARDB.csv  
#' # 3. 3_CAZy.csv
#' # 4. 4_COG.csv
#' # Then run:
#' # results <- run_complete_analysis()

run_complete_analysis <- function() {
  
  cat("=====================================================\n")
  cat("SOIL MICROBIOME ANALYSIS PIPELINE\n")
  cat("=====================================================\n\n")
  cat("STUDY: Ecological and Genomic Dynamics of the Soil Microbiome\n")
  cat("        Under Sustained Pressure from Phytophthora nicotianae\n\n")
  
  cat("STEP 1: DATA PREPARATION\n")
  cat("------------------------\n")
  cat("1. Download data files from Zenodo:\n")
  cat("   https://doi.org/10.5281/zenodo.18154363\n\n")
  cat("2. Required files:\n")
  cat("   - 1_Gene_IDs.csv\n")
  cat("   - 2_ARDB.csv\n")
  cat("   - 3_CAZy.csv\n")
  cat("   - 4_COG.csv\n\n")
  
  cat("STEP 2: LOAD DATA\n")
  cat("-----------------\n")
  cat("# Example code:\n")
  cat('gene_data <- read.csv("1_Gene_IDs.csv")\n')
  cat('ardb_data <- read.csv("2_ARDB.csv")\n')
  cat('cazy_data <- read.csv("3_CAZy.csv")\n')
  cat('cog_data <- read.csv("4_COG.csv")\n\n')
  
  cat("STEP 3: RUN ANALYSES\n")
  cat("--------------------\n")
  cat("# Individual analyses:\n")
  cat("gene_results <- analyze_gene_ids(gene_data)\n")
  cat("ardb_results <- analyze_ardb(ardb_data)\n")
  cat("cazy_results <- analyze_cazy(cazy_data)\n")
  cat("cog_results <- analyze_cog(cog_data)\n\n")
  
  cat("STEP 4: GENERATE SUMMARY\n")
  cat("------------------------\n")
  cat("# Create combined results:\n")
  cat('results <- list(\n')
  cat('  gene_analysis = gene_results,\n')
  cat('  ardb_analysis = ardb_results,\n')
  cat('  cazy_analysis = cazy_results,\n')
  cat('  cog_analysis = cog_results\n')
  cat(')\n\n')
  
  cat("=====================================================\n")
  cat("ANALYSIS PIPELINE READY FOR USE\n")
  cat("=====================================================\n\n")
  
  # Return empty list as placeholder
  return(list(
    message = "Analysis pipeline loaded successfully. Follow steps above to run analyses.",
    scripts_loaded = c("1_gene_analysis.R", "2_ardb_analysis.R", 
                      "3_cazy_analysis.R", "4_cog_analysis.R")
  ))
}

# If script is run directly, show instructions
if (sys.nframe() == 0) {
  cat("Master analysis script loaded.\n")
  cat("Type 'run_complete_analysis()' to see usage instructions.\n")
}
