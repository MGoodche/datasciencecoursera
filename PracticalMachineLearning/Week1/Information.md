## Week 1: Prediction, Errors, and Cross Validation

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

```[R]
library(kernlab)
data(spam)
head(spam)
```
3. Features: If we want to build a prediction algorithm, we need to calculate some characteristics of these emails that we can use to be able to build a predictive algorithm. One example might be, we can calculate the frequency with which a
particular word appears, for example the word 'You'


```[R]
Hello team,

Can you send me your address so I can send you the invitation?
Thanks,

A
```

In this example it appears twice, so 2 out of 17 words or about 11% of the words in this email are you.

Now, you can look at the frequency of the word, >your<, and how often it appears in the email. To plot it, you can use this code:
```[R]
plot(density(spam$your[spam$type=="nonspam"]),
     col="blue",main="",xlab="Frequency of 'your'")
lines(density(spam$your[spam$type=="spam"]),col="red")
```
On the x-axis is the frequency that with which, your, appeared in the email. And on the y-axis is the density, or the number of times the that frequency appears amongst the emails.

4.  Algorithm: 
And so what you can see is that most of the emails that are SPAM, those are the ones that are in red, you can see that they tend to have more appearances of the word, your. Where as all of the emails that are HAM, the ones that we actually want to receive have a much higher peak right over here down near 0, so there's very few emails that have a large number of viewers that are HAM. So, we can build an algorithm in this case let's build a very very simple algorithm. We can estimate an algorithm where we want
to just find a cut off a constant C, where if the frequency of your is above C then we predict spam and otherwise we predict
that it's ham. So going back to our data we can fig, try
to figure out what that best cut off is, and here's an
example of a cutoff that you could choose, so choose a cut off here that if
it's above 0.5 then we say that it's SPAM, and if it's below 0.5
we can say that it's HAM. 

```[R]
prediction <- ifelse(spam$your > 0.5,"spam","nonspam")
table(prediction,spam$type)/length(spam$type)
```

5. Evaluation
```[R]
prediction nonspam   spam
   nonspam  0.4590 0.1017
   spam     0.1469 0.2923
   ```
Accuracy$ \approx 0.459 + 0.292 = 0.751$

