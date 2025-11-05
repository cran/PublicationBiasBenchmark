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
# # Define your new method
# methods_settings <- data.frame(
#   method          = c("myNewMethod"),
#   method_setting  = c("default"),
#   power_test_type = c("p_value")
# )

## ----eval=FALSE---------------------------------------------------------------
# for (dgm_name in dgm_names) {
# 
#   # Download precomputed results for existing methods (for replacements)
#   download_dgm_results(dgm_name)
# 
#   ### Simple performance metrics ----
#   # Compute primary measures (not dependent on CI or power)
#   compute_measures(
#     dgm_name        = dgm_name,
#     method          = methods_settings$method,
#     method_setting  = methods_settings$method_setting,
#     power_test_type = methods_settings$power_test_type,
#     measures        = c("bias", "relative_bias", "mse", "rmse",
#                        "empirical_variance", "empirical_se", "convergence"),
#     verbose         = TRUE,
#     estimate_col    = "estimate",
#     true_effect_col = "mean_effect",
#     ci_lower_col    = "ci_lower",
#     ci_upper_col    = "ci_upper",
#     p_value_col     = "p_value",
#     bf_col          = "BF",
#     convergence_col = "convergence",
#     n_repetitions   = 1000,
#     overwrite       = FALSE
#   )
# 
#   # If your method does not return CI or hypothesis test, skip these measures
#   compute_measures(
#     dgm_name        = dgm_name,
#     method          = methods_settings$method,
#     method_setting  = methods_settings$method_setting,
#     power_test_type = methods_settings$power_test_type,
#     measures        = c("power", "coverage", "mean_ci_width", "interval_score",
#                        "negative_likelihood_ratio", "positive_likelihood_ratio"),
#     verbose         = TRUE,
#     estimate_col    = "estimate",
#     true_effect_col = "mean_effect",
#     ci_lower_col    = "ci_lower",
#     ci_upper_col    = "ci_upper",
#     p_value_col     = "p_value",
#     bf_col          = "BF",
#     convergence_col = "convergence",
#     n_repetitions   = 1000,
#     overwrite       = FALSE
#   )
# 
# 
#   ### Replacement performance metrics ----
#   # Specify method replacement strategy
#   # The most common one: random-effects meta-analysis -> fixed-effect meta-analysis
#   RMA_replacement <- list(
#     method          = c("RMA", "FMA"),
#     method_setting  = c("default", "default"),
#     power_test_type = c("p_value", "p_value")
#   )
# 
#   method_replacements <- list(
#     "myNewMethod-default" = RMA_replacement
#   )
# 
#   compute_measures(
#     dgm_name            = dgm_name,
#     method              = methods_settings$method,
#     method_setting      = methods_settings$method_setting,
#     power_test_type     = methods_settings$power_test_type,
#     method_replacements = method_replacements,
#     measures            = c("bias", "relative_bias", "mse", "rmse",
#                            "empirical_variance", "empirical_se", "convergence"),
#     verbose         = TRUE,
#     estimate_col    = "estimate",
#     true_effect_col = "mean_effect",
#     ci_lower_col    = "ci_lower",
#     ci_upper_col    = "ci_upper",
#     p_value_col     = "p_value",
#     bf_col          = "BF",
#     convergence_col = "convergence",
#     n_repetitions   = 1000,
#     overwrite       = FALSE
#   )
# 
#   # If your method does not return CI or hypothesis test, skip these measures
#   compute_measures(
#     dgm_name            = dgm_name,
#     method              = methods_settings$method,
#     method_setting      = methods_settings$method_setting,
#     power_test_type     = methods_settings$power_test_type,
#     method_replacements = method_replacements,
#     measures            = c("power", "coverage", "mean_ci_width", "interval_score",
#                            "negative_likelihood_ratio", "positive_likelihood_ratio"),
#     verbose         = TRUE,
#     estimate_col    = "estimate",
#     true_effect_col = "mean_effect",
#     ci_lower_col    = "ci_lower",
#     ci_upper_col    = "ci_upper",
#     p_value_col     = "p_value",
#     bf_col          = "BF",
#     convergence_col = "convergence",
#     n_repetitions   = 1000,
#     overwrite       = FALSE
#   )
# 
# }

