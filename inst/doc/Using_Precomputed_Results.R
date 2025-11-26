## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# library(PublicationBiasBenchmark)

## ----eval=FALSE---------------------------------------------------------------
# # View conditions for the Stanley2017 DGM
# conditions <- dgm_conditions("Stanley2017")
# head(conditions)

## ----eval=FALSE---------------------------------------------------------------
# # Download precomputed results for the Stanley2017 DGM
# download_dgm_results("Stanley2017")

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve results for the first repetition of condition 1 for RMA method
# retrieve_dgm_results(
#   dgm            = "Stanley2017",
#   method         = "PETPEESE",
#   method_setting = "default",
#   condition_id   = 1,
#   repetition_id  = 1
# )

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve all repetitions for condition 1 of RMA method
# condition_1_results <- retrieve_dgm_results(
#   dgm            = "Stanley2017",
#   method         = "PETPEESE",
#   method_setting = "default",
#   condition_id   = 1
# )
# 
# # Examine the distribution of estimates
# hist(condition_1_results$estimate,
#      main = "Distribution of RMA Estimates",
#      xlab = "Effect Size Estimate")

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve all results for PET-PEESE method
# pet_peese_results <- retrieve_dgm_results(
#   dgm            = "Stanley2017",
#   method         = "PETPEESE",
#   method_setting = "default"
# )

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve all results
# df <- retrieve_dgm_results("Stanley2017")

