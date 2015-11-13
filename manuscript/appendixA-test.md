# Appendix A: Probability models

Probability distributions can be categorized by whether the support for the distribution is discrete or continuous. 
A discrete support means the random variable can only take on the values of a finite or countably infinite number of values while a continuous support means the random variable can take on uncountably infinite number of values.
This appendix introduces a number of discrete and continuous distributions that are often used in constructing a statistical model for data. 

Throughout this appendix I will be using a capital {$$}Y{/$$} to indicate the random variable, i.e. the value the data could take on, {$$}y{/$$} to indicate the realized value of the random variable, and Greek letters to indicate parameters of the distributions. 
In this appendix, we treat the parameters as if they are known and therefore I am deviating from my previous convention introduced in Chapter ??. 
But the idea here is that when building a model for real data, the parameters are unknown and we will estimated using the observed data. 


## Discrete distributions

Discrete distributions are characterized by their probabiliy mass functions {$$}p_Y(y)=P(Y=y){/$$} which describes the probability that the random variable {$$}Y{/$$} will attain the value {$$}y{/$$}. 
Each of these distributions will have a support {$$}\mathcal{Y}{/$$} that just describes the values that the random variable can attain which is also the values at which we can evaluate {$$}p_Y(y){/$$}. 
For the discrete distribution to be proper, we need to have 

{$$}
\sum_{y\in\mathcal{Y}} p_Y(y) = 1.
{/$$}

Therefore, for any discrete random variable, we know that {$$}p_Y(y) \le 1{/$$} for any value {$$}y{/$$} in its support, i.e. {$$}y\in\mathcal{Y}{/$$}.

For a discrete random variable, the expectation is

{$$}
E[Y] = \sum_{y\in\mathcal{Y}} y\, p_Y(y)
{/$$}

and the variance is 

{$$}
V[Y] = \sum_{y\in\mathcal{Y}} \left(y-E[Y]\right)^2 p_Y(y).
{/$$}




### Bernoulli distribution

The Bernoulli distribution, named after Swiss scientist Jacob Bernoulli, has support {$$}\mathcal{Y} = \{0,1\}{/$$} and probability mass function 

{$$}
p_Y(1) = P(Y=1) = \pi = 1 - P(Y=0) = p_Y(0)
{/$$}

where {$$}\pi\in \[0,1\]{/$$}.
We write {$$}Y\sim Ber(\pi){/$$} which has {$$}E[Y] = \pi{/$$} and {$$}V[Y] = \pi(1-\pi){/$$}. We often refer to {$$}Y=1{/$$} as a success and {$$}Y=1{/$$} as a failure. 

