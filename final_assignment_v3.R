library(tidyverse)
library(data.table)
library(MASS)
library(lime)
library(iml)
library(caret)
library(AUC)
library(xgboost)
library(car)
library(caret)
library(testthat)
library(gridExtra)
library(corrplot)
library(GGally)
library(mlr)
library(mlbench)

# functions
doPlots <- function(data_in, fun, ii, ncol=3) {
  pp <- list()
  for (i in ii) {
    p <- fun(data_in=data_in, i=i)
    pp <- c(pp, list(p))
  }
  do.call("grid.arrange", c(pp, ncol=ncol))
}

plotCorr <- function(data_in, i){
  data <- data.frame(x = data_in[[i]], shares = data_in$shares)
  p <- ggplot(data, aes(x = x, y = shares)) + geom_point(shape = 1, na.rm = TRUE) + geom_smooth(method = lm ) + xlab(paste0(colnames(data_in)[i], '\n', 'Correlation Coefficient: ', round(cor(data_in[[i]], data$shares, use = 'complete.obs'), 2))) + theme_light()
  return(suppressWarnings(p))
}

# loading data
path <- "C:/Users/mark9/Desktop/data collection/OnlineNewsPopularity/"
data_set <- data.frame(fread(paste0(path,"OnlineNewsPopularity.csv")))

# Part0: Data preparation----

## create new column and delete column of no use
data_set$popular <- ifelse(data_set$shares >= 1500, 1, 0)
data_set$url <- NULL
data_set$timedelta <- NULL

## data exploration

### structure
dim(data_set)
summary(data_set)

barplot(table(data_set$shares))

prop.table(table(data_set$popular)) # check balance

### categorical
data_set[,c(30:36,60)] %>% 
  rename("mon" = weekday_is_monday, "tue" = weekday_is_tuesday, "wed" = weekday_is_wednesday,
         "thr" = weekday_is_thursday, "fri" = weekday_is_friday, "sat" = weekday_is_saturday,
         "sun" = weekday_is_sunday) %>% 
  gather("day", "Y", -popular) %>% 
  mutate(day = factor(day, levels = c("mon","tue","wed","thr","fri","sat","sun"))) %>% 
  filter(Y == 1) %>% 
  group_by(day, popular) %>% 
  summarise(cnt = n()) %>% 
  ungroup() %>% 
  ggplot(data=., aes(x=factor(day), y = cnt, fill = factor(popular))) + 
  geom_bar(stat="identity", position=position_dodge())
  
### correlation
for(i in 1:58){
  if(i %in% c(31:37)){next()}
  correlations <- cor(data_set[,c(i, 59)])
  if(correlations[1,2] < -0.2 | correlations[1,2] >= 0.5){
    doPlots(data_set, fun = plotCorr, ii = i) 
  } else {cat("no strong correlation\n")}
}

## stratified sampling
input_ones <- data_set[which(data_set$popular == 1),]
input_zero <- data_set[which(data_set$popular == 0), ]
set.seed(122)
input_ones_training_row <- sample(1:nrow(input_ones),0.7*nrow(input_ones))
input_zero_training_row <- sample(1:nrow(input_zero),0.7*nrow(input_zero))

training_ones <- input_ones[input_ones_training_row,]
training_zero <- input_zero[input_zero_training_row,]
trainingData <- rbind(training_ones, training_zero)

test_ones <- input_ones[-input_ones_training_row,]
test_zero <- input_zero[-input_zero_training_row,]
testData <- rbind(test_ones, test_zero)

dim(trainingData)
dim(testData)

## convert to matrix
train.label <- trainingData$popular
test.label <- testData$popular

trainingData2 <- trainingData # for tuning
trainingData2$shares <- NULL
trainingData2$popular <- factor(ifelse(trainingData2$popular == 1, "Y", "N"), levels = c("Y", "N"))

testData2 <- testData # for tuning
testData2$shares <- NULL
testData2$popular <- factor(ifelse(testData2$popular == 1, "Y", "N"), levels = c("Y", "N"))

trainingData$popular <- NULL
trainingData$shares <- NULL
testData$shares <- NULL
testData$popular <- NULL

train.data <- as.matrix(trainingData)
test.data <- as.matrix(testData)

xgb.train <- xgb.DMatrix(data=train.data,label=train.label)
xgb.test <- xgb.DMatrix(data=test.data,label=test.label)

# GBM Part1: tuning----


# XGboost Part1: tuning----
## tune parameters (mlr)
set.seed(125)

train.t <- makeClassifTask(data = trainingData2, target = "popular", positive = "Y")
test.t <- makeClassifTask(data = testData2, target = "popular", positive = "Y")

lrn <- makeLearner("classif.xgboost", nrounds=10)

cv <- makeResampleDesc("CV", iters=5)
res <- resample(lrn, train.t, cv, acc)

## introduction of hyperparameters
table_para <- 
  data.frame(
    Param = c('eta','gamma','nrounds','max_depth','subsample','colsample_bytree','lambda','alpha'),
    intro = c('control the learning rate',
              'maximum depth of a tree',
              'max number of boosting iterations',
              'minimum sum of instance weight (hessian) needed in a child',
              'subsample ratio of the training instance',
              'subsample ratio of columns when constructing each tree',
              'regularization term on weights',
              'regularization term on weights'))
table_para

## tuning
ps <- 
  makeParamSet(
    makeNumericParam("eta", 0, 0.3), # control the learning rate
    makeIntegerParam("gamma", 0, 10), # maximum depth of a tree
    makeIntegerParam("nrounds", 100 ,500), # max number of boosting iterations
    makeIntegerParam("max_depth", 3, 10), # maximum depth of a tree
    makeNumericParam("subsample", 0.5, 1), # subsample ratio of the training instance. 
    makeNumericParam("colsample_bytree", 0.5, 1), # subsample ratio of columns when constructing each tree.
    makeNumericParam("lambda", 0, 100), # regularization term on weights.
    makeNumericParam("alpha", 0, 1) # regularization term on weights.
) 
tc <- makeTuneControlMBO(budget = 100) # Maximum budget for tuning. This value restricts the number of function evaluations. It is passed to maxExperiments.

set.seed(125)

tr <- tuneParams(learner = lrn, 
                task = train.t, 
                resampling = cv5, 
                measures = acc, 
                par.set = ps, 
                control = tc)
tr$mbo.result$x # optimal parameters
tr$mbo.result$y # error rate 
lrn <- setHyperPars(lrn, par.vals = tr$x) # learner
mdl <- train(lrn, train.t) # model built by training data
conM2 <- confusionMatrix(xgb.pred.final, test.label)

# XGboost Part2: building model----

## parameters
params  <-  list(
  booster="gbtree", 
  objective="binary:logistic", # specify the learning task and the corresponding learning objective
  eval_metric="error", # evaluation metrics for validation data.
  eta=tr$mbo.result$x$eta, 
  gamma=tr$mbo.result$x$gamma, 
  nrounds=tr$mbo.result$x$nrounds, 
  max_depth=tr$mbo.result$x$max_depth, 
  subsample=tr$mbo.result$x$subsample, 
  colsample_bytree=tr$mbo.result$x$colsample_bytree, 
  lambda=tr$mbo.result$x$lambda,
  alpha=tr$mbo.result$x$alpha
)

#### save parameters result ##### 
params  <-  list(
  booster="gbtree",
  objective="binary:logistic",
  eval_metric="error",
  eta=0.04833973,
  gamma=2,
  nrounds=431,
  max_depth=6,
  subsample=0.918199,
  colsample_bytree=0.5484174,
  lambda=86.44008,
  alpha=0.3015021
)


## model
set.seed(123)
xgb.fit <- 
  xgb.train(
    params=params,
    data=xgb.train,
    nrounds=10000, # max number of boosting iterations
    early_stopping_rounds=10,
    watchlist=list(val1=xgb.train,val2=xgb.test), # named list of xgb.DMatrix datasets to use for evaluating model performance.
    verbose=0
  )
xgb.fit

## Predict outcomes with the test data
xgb.pred <- predict(xgb.fit, test.data, reshape=T)
xgb.pred.final <- ifelse(xgb.pred > 0.5,1,0) %>% factor(., levels = c(1, 0))
test.label <- factor(test.label, levels = c(1, 0))

## evaluation
conM <- confusionMatrix(xgb.pred.final, test.label)
conM
conM$table

plot(roc(xgb.pred,test.label))
auc(roc(xgb.pred,test.label))

# XGboost Part3: Interpretation----
## view variable importance plot
mat <- xgb.importance(feature_names = colnames(train.data), model = xgb.fit)

par(mfrow = c(1,2))

ggplot(mat[1:20], aes(reorder(x = Feature, Gain), y = Gain)) +
  geom_bar(stat="identity") +
  geom_line(aes(y = Gain), size = 1.5, color="red", group = 1) +
  coord_flip() +
  labs(x="Feature", title = "Top 20 Features")

ggplot(mat[37:56], aes(reorder(x = Feature, -Gain), y = Gain)) +
  geom_bar(stat="identity") +
  geom_line(aes(y = Gain), size = 1.5, color="red", group = 1) +
  coord_flip() +
  labs(x="Feature", title = "Last 20 Features")

## ALE
mod_noclass <- Predictor$new(xgb.fit, data = testData2, y = "popular", class = "Y", 
                             predict.fun=function(object, newdata){
                               newData_x = xgb.DMatrix(data.matrix(newdata), missing = NA)
                               results<-predict(object, newData_x)
                               return(results)
                             }) # create a new function to make xgboost to be compatible in LIME

par(mfrow = c(2,2))

eff1 <- FeatureEffect$new(mod_noclass,
                          feature = "kw_avg_avg", 
                          method = "ale", grid.size = 100)
eff1$results 
p_eff1 <- ggplot(eff1$results[1:100,], aes(x = kw_avg_avg, y = `.value`)) + geom_line()


eff2 <- FeatureEffect$new(mod_noclass,
                         feature = "self_reference_min_shares", 
                         method = "ale", grid.size = 100)
eff2$results 
plot(eff2)
p_eff2 <- ggplot(eff2$results[1:50,], aes(x = self_reference_min_shares, y = `.value`)) + geom_line()


eff3 <- FeatureEffect$new(mod_noclass,
                          feature = "is_weekend", 
                          method = "ale")
eff3$results 
p_eff3 <- plot(eff3)

eff4 <- FeatureEffect$new(mod_noclass,
                          feature = "data_channel_is_entertainment", 
                          method = "ale")
eff4$results 
p_eff4 <- plot(eff4)
