## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# library(PublicationBiasBenchmark)
# 
# # Specify path to the directory containing results
# PublicationBiasBenchmark.options(resources_directory = "/path/to/files")

## ----eval=FALSE---------------------------------------------------------------
# # List of DGMs to evaluate
# dgm_names <- c(
#   "Stanley2017",
#   "Alinaghi2018",
#   "Bom2019",
#   "Carter2019"
# )
# 
# # Your method information
# method_name    <- "myNewMethod"
# method_setting <- "default"  # Or other setting name if you have multiple

## ----eval=FALSE---------------------------------------------------------------
# # Download datasets for all DGMs
# for (dgm_name in dgm_names) {
#   message("Downloading datasets for: ", dgm_name)
#   download_dgm_datasets(dgm_name)
# }

## ----eval=FALSE---------------------------------------------------------------
# # Set seed for reproducibility
# set.seed(1)
# 
# # Process each DGM
# for (dgm_name in dgm_names) {
# 
#   message("Processing DGM: ", dgm_name)
# 
#   # Get condition information
#   conditions <- dgm_conditions(dgm_name)
#   message("Number of conditions: ", nrow(conditions))
# 
#   # Container to store all results for this DGM
#   all_results <- list()
# 
#   # Process each condition
#   for (condition_id in conditions$condition_id) {
# 
#     message("  Condition ", condition_id, " / ", nrow(conditions))
# 
#     # Retrieve all repetitions for this condition
#     condition_datasets <- retrieve_dgm_dataset(
#       dgm_name = dgm_name,
#       condition_id = condition_id,
#       repetition_id = NULL  # NULL retrieves all repetitions
#     )
# 
#     # Get unique repetition IDs
#     repetition_ids <- unique(condition_datasets$repetition_id)
#     message("    Repetitions: ", length(repetition_ids))
# 
#     # Compute results for each repetition
#     condition_results <- list()
#     for (repetition_id in repetition_ids) {
# 
#       # Extract data for this specific repetition
#       repetition_data <- condition_datasets[
#         condition_datasets$repetition_id == repetition_id,
#       ]
# 
#       # Apply your method (error handling is done internally)
#       result <- run_method(
#         method_name = method_name,
#         data        = repetition_data,
#         settings    = method_setting
#       )
# 
#       # Attach metadata
#       result$condition_id  <- condition_id
#       result$repetition_id <- repetition_id
# 
#       condition_results[[repetition_id]] <- result
#     }
# 
#     # Combine results for this condition
#     all_results[[condition_id]] <- do.call(rbind, condition_results)
#   }
# 
#   # Combine all results for this DGM
#   dgm_results <- do.call(rbind, all_results)
# 
#   # Save results
#   results_dir <- file.path(data_folder, dgm_name, "results")
#   if (!dir.exists(results_dir)) {
#     dir.create(results_dir, recursive = TRUE)
#   }
# 
#   results_file <- file.path(
#     results_dir,
#     paste0(method_name, "-", method_setting, ".csv")
#   )
# 
#   write.csv(dgm_results, file = results_file, row.names = FALSE)
#   message("Results saved to: ", results_file)
# 
#   # Save session information
#   metadata_dir <- file.path(data_folder, dgm_name, "metadata")
#   if (!dir.exists(metadata_dir)) {
#     dir.create(metadata_dir, recursive = TRUE)
#   }
# 
#   # sessionInfo() output
#   sessioninfo_file <- file.path(
#     metadata_dir,
#     paste0(method_name, "-", method_setting, "-sessionInfo.txt")
#   )
#   writeLines(
#     capture.output(sessionInfo()),
#     sessioninfo_file
#   )
# 
#   # Detailed session info (using the sessioninfo package)
#     session_log_file <- file.path(
#       metadata_dir,
#       paste0(method_name, "-", method_setting, "-session.log")
#     )
#     sessioninfo::session_info(to_file = session_log_file)
# 
#   message("Session info saved to: ", metadata_dir)
# }
# 
# message("All computations completed!")

