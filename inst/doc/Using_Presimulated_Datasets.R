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
# # Specify path to the directory containing resources
# PublicationBiasBenchmark.options(resources_directory = "/path/to/files")
# 
# # Download presimulated datasets for the Stanley2017 DGM
# download_dgm_datasets("Stanley2017")

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve first repetition of condition 1
# dataset <- retrieve_dgm_dataset(
#   dgm = "Stanley2017",
#   condition_id = 1,
#   repetition_id = 1
# )
# 
# # Examine the dataset structure
# head(dataset)
# str(dataset)

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve all repetitions for condition 1
# all_reps <- retrieve_dgm_dataset(
#   dgm = "Stanley2017",
#   condition_id = 1
# )
# 
# # Check how many repetitions are available
# length(unique(all_reps$repetition_id))
# 
# # Extract data for a specific repetition
# rep_5 <- all_reps[all_reps$repetition_id == 5, ]

