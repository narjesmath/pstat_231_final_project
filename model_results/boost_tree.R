



boost_model = boost_tree(trees = tune()) %>% #set up boosted tree model
  set_engine("xgboost") %>% # xgboost engine calculates lambda #high lambda is good
  set_mode("classification")


boost_wflw = workflow() %>%
  add_recipe(vessels_recipe) %>%
  add_model(boost_model)

boost_grid <- grid_regular(
  trees(range = c(10,2000)),
  levels = 10)

boost_tune_res <- tune_grid(
  boost_wflw,
  resamples = vessels_folds,
  grid = boost_grid,
  metrics = metric_set(roc_auc)
)

saveRDS(boost_tune_res,file = "boost_tune.RDS")
boost_results <- readRDS("boost_tune.RDS")
# autoplot(boost_results)

autoplot(boost_tune_res)



boost_metrics <- collect_metrics(boost_tune_res) %>%
  arrange(desc((mean)))

best_complexity_boost <- select_best(boost_tune_res)
