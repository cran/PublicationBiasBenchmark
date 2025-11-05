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
# # Download precomputed measures for the Stanley2017 DGM
# download_dgm_measures("Stanley2017")

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve bias measures for RMA method in condition 1
# retrieve_dgm_measures(
#   dgm            = "Stanley2017",
#   measure        = "bias",
#   method         = "RMA",
#   method_setting = "default",
#   condition_id   = 1
# )

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve all measures across all conditions and methods
# df <- retrieve_dgm_measures("Stanley2017")

## ----eval=FALSE---------------------------------------------------------------
# # Retrieve all measures for PET-PEESE method
# pet_peese_results <- retrieve_dgm_measures(
#   dgm    = "Stanley2017",
#   method = "PETPEESE"
# )

## ----eval=FALSE, fig.height = 12, fig.width = 10, dpi = 320-------------------
# # Retrieve all measures across all conditions and methods
# df <- retrieve_dgm_measures("Stanley2017")
# 
# # Retrieve conditions to identify null vs. alternative hypotheses
# conditions <- dgm_conditions("Stanley2017")
# 
# # Create readable method labels
# df$label <- with(df, paste0(method, " (", method_setting, ")"))
# 
# # Identify conditions under null hypothesis (H₀: mean effect = 0)
# df$H0 <- df$condition_id %in% conditions$condition_id[conditions$mean_effect == 0]
# 
# # Create multi-panel visualization
# par(mfrow = c(3, 2))
# par(mar = c(4, 10, 1, 1))
# 
# # Panel 1: Convergence rates
# boxplot(convergence * 100 ~ label,
#         horizontal = TRUE,
#         las = 1,
#         ylab = "",
#         ylim = c(20, 100),
#         data = df,
#         xlab = "Convergence (%)")
# 
# # Panel 2: RMSE
# boxplot(rmse ~ label,
#         horizontal = TRUE,
#         las = 1,
#         ylab = "",
#         ylim = c(0, 0.6),
#         data = df,
#         xlab = "RMSE")
# 
# # Panel 3: Bias
# boxplot(bias ~ label,
#         horizontal = TRUE,
#         las = 1,
#         ylab = "",
#         ylim = c(-0.25, 0.25),
#         data = df,
#         xlab = "Bias")
# abline(v = 0, lty = 3)  # Reference line at zero
# 
# # Panel 4: Coverage
# boxplot(coverage * 100 ~ label,
#         horizontal = TRUE,
#         las = 1,
#         ylab = "",
#         ylim = c(30, 100),
#         data = df,
#         xlab = "95% CI Coverage (%)")
# abline(v = 95, lty = 3)  # Reference line at nominal level
# 
# # Panel 5: Type I Error Rate (H₀ conditions only)
# boxplot(power * 100 ~ label,
#         horizontal = TRUE,
#         las = 1,
#         ylab = "",
#         ylim = c(0, 40),
#         data = df[df$H0, ],
#         xlab = "Type I Error Rate (%)")
# abline(v = 5, lty = 3)  # Reference line at α = 0.05
# 
# # Panel 6: Power (H₁ conditions only)
# boxplot(power * 100 ~ label,
#         horizontal = TRUE,
#         las = 1,
#         ylab = "",
#         ylim = c(10, 100),
#         data = df[!df$H0, ],
#         xlab = "Power (%)")

