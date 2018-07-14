#Calculates the mode
#Takes as input a vector 'x', outputs mode
Mode <- function(x) {
  
  #Drop missing values from calculation
  y <- x[complete.cases(x)]
  
  #Finds mode
  unique.y <- unique(y)
  return(unique.y[which.max(tabulate(match(y, unique.y)))])
}


# Calculate the AUC of a GLM model easily
# Jared Knowles
# model = a fitted glm in R
# newdata = an optional data.frame of new fitted values
auc.glm <- function(model, newdata = NULL){
  if(missing(newdata)){
    resp <- model$y
    # if(class(resp) == "numeric"){
    #   resp <- factor(resp)
    # }
    pred <- model$fitted.values
  } else{
    newdata <- as.data.frame(newdata)
    resp <- newdata[, all.vars(model$formula)[1]]
    pred <- predict(model, newdata, type = "response")
  }
  out <- pROC::auc(resp, pred)
  return(as.numeric(out))
}

logit_rsquared <- function(model){
  nullmod <- glm(model$y ~ 1, family="binomial")
  as.numeric(1-logLik(model)/logLik(nullmod))
}

# Calculate the prevalence of the second class in a two-class outcome
# Jared Knowles
# resp = a vector of bivariate responses (0, 1)
get_prevl <- function(resp){
  table(resp)[[2]] / sum(table(resp))
}


# Need to import pROC
# Calculate the optimal topleft threshold
# Jared KNowles
# resp = vector of outcome
# pred = predicted outcome
get_thresh <- function(resp, pred){
  prev <- get_prevl(resp)
  rocobj <- roc(resp, pred)
  out <- coords(rocobj, "best",  ret = "threshold",
                best.method = "closest.topleft", best.weights = c(0.3, prev))
  return(out)
}

# From a glm or lm or lmer or glmer model create a confusion matrix
# model = model object
# data = newdata to use if needed
# thresh = optional value from 0 to 1 to cut predictions
conf_matrix <- function(model, data = NULL, thresh = NULL) {
  if(missing(data)){
    if(class(model)[1] %in% c("lmerMod", "glmerMod")){
      data <- model@frame
    } else{
      data <- model$model
    }
  }
  if(missing(thresh)){
    cut_thresh <- mean(predict(model, data, type ="response"))
  } else{
    cut_thresh <- thresh
  }
  
  prediction <- ifelse(predict(model, data, type='response') > cut_thresh, TRUE, FALSE)
  if(class(model)[1] %in% c("lmerMod", "glmerMod")){
    confusion  <- table(pred = prediction, obs = as.logical(model@frame[, 1]))
  } else{
    confusion  <- table(pred = prediction, obs = as.logical(model$y))
  }
  confusion  <-   confusion  <- cbind(confusion, 
                                      c(1 - confusion[1,1]/(confusion[1,1]+ 
                                                              confusion[2,1]), 
                                        1 - confusion[2,2]/(confusion[2,2]+confusion[1,2])))
  confusion  <- as.data.frame(confusion)
  names(confusion) <- c('Obs FALSE', 'Obs TRUE', 'class.error')
  rownames(confusion) <- c('Pred FALSE', 'Pred TRUE')
  confusion
}
