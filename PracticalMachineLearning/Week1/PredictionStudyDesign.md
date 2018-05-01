### 2. Prediction study design

#### Training Dataset
A training dataset is a dataset of examples used for learning, that is to fit the parameters (e.g., weights) of, for example, a classifier.
Most approaches that search through training data for empirical relationships tend to overfit the data, meaning that they can identify apparent relationships in the training data that do not hold in general.

#### Test Dataset
A test dataset is a dataset that is independent of the training dataset, but that follows the same probability distribution as the training dataset. If a model fit to the training dataset also fits the test dataset well, minimal overfitting has taken place (see figure below). A better fitting of the training dataset as opposed to the test dataset usually points to overfitting.


#### Rules of thumb for prediction study design

- If you have a large sample size
60% training
20% test
20% validation

- If you have a medium sample size
60% training
40% testing

- If you have a small sample size
Do cross validation
Report caveat of small sample size
