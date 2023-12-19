dim(d_policy_epi)

names(d_policy_epi)

# Setup predictors and outcome

y <- d_policy_epi$EPI

x <- d_policy_epi |> select(invest:zone) |> as.matrix()

dim(x)

# Run LASSO regression
library(glmnet)
library(tidyverse)

# lambda: you can change it to decide the sparsity (i.e., how many coefficients to set to zero)
# Higher means being more selective.
# alpha = 0 means you run a lasso regression. DOn't change

model <- glmnet(x, y , lambda = 0.01, family = "gaussian", intercept = TRUE, alpha = 1)

summary(model)

lasso_coef <- model$beta |> as.matrix() |> as.data.frame() |> 
  rownames_to_column(var = "predictor") |> as_tibble()

lasso_coef_nonzero <- lasso_coef |> filter(s0 != 0)

lasso_coef_nonzero |> 
  ggplot() + geom_bar(aes(y = predictor, x = s0), stat = "identity")
