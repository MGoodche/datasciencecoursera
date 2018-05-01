Week 1: Prediction, Errors, and Cross Validation

### 1. Introduction

Imagine you want to build a predictor. So you start of with, suppose I want to predict for these imaginary dots whether they're red 
or blue. Well, what you might do is have a big group of dots that you want to predict about, and then you use probability and sampling to pick a training set. 
The training set will consist of some red dots and some blue dots, and you'll measure a whole bunch of characteristics of those dots. 


Then you'll use those characteristics to build what's called a prediction function, and the prediction function will take a new dot, whose color you don't know,  but using those characteristics that you measured will predict whether it's red or whether it's blue. Then you can go off and try to evaluate whether that prediction works well or not. 
 
One thing that I think is very important and often underappreciated about building a machine learning algorithm is to look at probability and sampling step of building the training and test 
stats. This is always a required component of building every machine learning algorithm is deciding which  samples you're going to use to build that algorithm. But sometimes it's over-looked, because all of the action that you hear about for machine learning happens down here when you're building the actual machine learning function itself. 

In short, the omponents of a predictor are:

##### Question -> input data -> features -> algorithm -> parameters -> evaluation

###### Example: Spam Predictor

1. Question: Can I use quantitative characteristics of the emails to classify them as SPAM/HAM?
2. Input Data: there is a current lab package K-E-R-N-L-A-B and it's a SPAM dataset

library(kernlab)
data(spam)
head(spam)

3. Features: If we want to build a prediction algorithm, we need to calculate some characteristics of these emails that we can use to be able to build a predictive algorithm. One example might be, we can calculate the frequency with which a
particular word appears, for example the word 'You'

Hello team,

Can you send me your address so I can send you the invitation?

Thanks,

A

In this example it appears twice, so 2 out of 17 words or about 11% of the words in this email are you.
