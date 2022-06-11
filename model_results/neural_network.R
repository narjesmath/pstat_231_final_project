# ?keras::install_keras()
# install_keras(Tensorflow = "1.13.1",
# restart_session = FALSE)
library(keras)

nnet_spec <-
  mlp() %>%
  set_mode("classification") %>%
  set_engine("keras", verbose = 0)

nnet_wflow <-
  workflow() %>%
  add_recipe(vessels_recipe) %>%
  add_model(nnet_spec)

nnet_res <-
  nnet_wflow %>%
  fit_resamples(
    resamples = vessels_folds,
    metrics = metric_set(
      recall, precision, f_meas,
      accuracy, kap,
      roc_auc, sens, spec),
    control = control_resamples(save_pred = TRUE)
  )
nn_results <- saveRDS(nnet_res,file = "data/nnet_res.rds")
# knn_results <- readRDS("boost_results.rds")
