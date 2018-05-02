#### 1. Introduction

The caret package (short for _C_lassification _A_nd _RE_gression _T_raining) is a set of functions that attempt to streamline the process for creating predictive models. The package contains tools for:

- data splitting
- pre-processing
- feature selection
- model tuning using resampling
- variable importance estimation
- as well as other functionality.

More info: http://topepo.github.io/caret/index.html

###### Example: Spam Predictor

```[R]
# Example of training a glm model on a spam data-set, using the caret library.
library(caret)
library(kernlab)

# Load spam dataset.
data(spam)

# Split the data into a training test set by 75% training 25% test.
inTrain <- createDataPartition(y = spam$type, p=0.75, list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]

# Set random seed value to ensure consistent training results each time.
set.seed(32343)

# Train the model (type ~ -> means use all variables in this data frame in order to predict the type)
fit <- train(type ~ ., data=training, method='glm')
```

Result

```[R]
Generalized Linear Model 

3451 samples
  57 predictors
   2 classes: 'nonspam', 'spam' 

No pre-processing
Resampling: Bootstrapped (25 reps) 

Summary of sample sizes: 3451, 3451, 3451, 3451, 3451, 3451, ... 

Resampling results

  Accuracy  Kappa  Accuracy SD  Kappa SD
  0.9       0.8    0.02         0.04    
  ```
  
Now, we create the final model:
```[R]
modelFit <- train(type ~.,data=training, method="glm")
modelFit$finalModel
```
  
  
Now, we run model on test set.
```[R]
predictions <- predict(modelFit,newdata=testing)
predictions
```

Now, we show accuracy on test set.

```[R]
confusionMatrix(predictions,testing$type)
```

Result:

```[R]
Confusion Matrix and Statistics

          Reference
Prediction nonspam spam
   nonspam     665   54
   spam         32  399
                                       
               Accuracy : 0.925        
                 95% CI : (0.908, 0.94)
    No Information Rate : 0.606        
    P-Value [Acc > NIR] : <2e-16       
                                       
                  Kappa : 0.842        
 Mcnemar's Test P-Value : 0.0235       
                                       
            Sensitivity : 0.954        
            Specificity : 0.881        
         Pos Pred Value : 0.925        
         Neg Pred Value : 0.926        
             Prevalence : 0.606        
         Detection Rate : 0.578        
   Detection Prevalence : 0.625        
      Balanced Accuracy : 0.917        
                                       
       'Positive' Class : nonspam     
```


