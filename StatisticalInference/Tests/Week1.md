#### Question 1: 
Consider influenza epidemics for two parent heterosexual families. Suppose that the probability is 17% that at least one of the parents has contracted the disease. The probability that the father has contracted influenza is 12% while the probability that both the mother and father have contracted the disease is 6%. What is the probability that the mother has contracted influenza?

Answer: 11%
A=Mother, B = Father
P(A∪B)=17%
P(B)=12%
P(A∩B)=6%

Since we know P(A∪B)=P(A)+P(B)−P(A∩B) we get
17%=P(A)+12%−6%.

#### Question 2:  random variable, X is uniform, a box from 0 to 1 of height 1. (So that its density is f(x)=1 for 0≤x≤1.) What is its 75th percentile?

Answer: 0.75

The density looks like a box. The point so that the area below it is 0.75 is 0.75. 

#### Question 3: You are playing a game with a friend where you flip a coin and if it comes up heads you give her X dollars and if it comes up tails she gives you Y dollars. The probability that the coin is heads is p (some number between 0 and 1.) What has to be true about X and Y to make so that both of your expected total earnings is 0. The game would then be called “fair”.

Answer: [p/(1-p)] = Y/X
Your expected earnings is −pX+(1−p)Y=0 Then it must be the case that p1−p=YX Or that the ratio of the payouts has to equal the odds. So consider, for example, if p1−p=2. The game is 2 to 1 against you, p=2/3; she is twice as likely to win as you. Then she will have to pay out twice as much if you win to make the game fair.

#### Question 4: A density that looks like a normal density (but may or may not be exactly normal) is exactly symmetric about zero. (Symmetric means if you flip it around zero it looks the same.) What is its median?

Answer: The median must be 0
The median must be 0 since 50 percent of the mass is below 0 and 50% is above

#### Question 5: Consider the following PMF shown below in R. What is the mean?
sum(x * p)
3

#### Question 6: A web site (www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) for home pregnancy tests cites the following: “When the subjects using the test were women who collected and tested their own samples, the overall sensitivity was 75%. Specificity was also low, in the range 52% to 75%.” Assume the lower value for the specificity. Suppose a subject has a positive test and that 30% of women taking pregnancy tests are actually pregnant. What number is closest to the probability of pregnancy given the positive test?

(Hints, watch Lecture 3 at around 7 minutes for a similar example. Also, there's a lot of Bayes' rule problems and descriptions out there, for example here's one for HIV testing. Note, discussions of Bayes' rule can get pretty heady. So if it's new to you, stick to basic treatments of the problem. Also see Chapter 3 Question 5.)

Answer: 40%
