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
E[Y] = \sum_{y\in\mathcal{Y}} y p_Y(y)
{/$$}
and the variance is 
{$$}
V[Y] = \sum_{y\in\mathcal{Y}} \left(y-E[Y])^2 p_Y(y).
{/$$}



### Bernoulli distribution

The Bernoulli distribution, named after Swiss scientist Jacob Bernoulli, has support {$$}\mathcal{Y} = \{0,1\}{/$$} and probability mass function 
{$$}
p_Y(1) = P(Y=1) = \pi = 1 - P(Y=0) = p_Y(0)
{/$$}
where {$$}\pi\in \[0,1\]{/$$}.
We write {$$}Y\sim Ber(\pi){/$$} which has {$$}E[Y] = \pi{/$$} and {$$}V[Y] = \pi(1-\pi){/$$}. We often refer to {$$}Y=1{/$$} as a success and {$$}Y=1{/$$} as a failure. 

### Binomial distribution

The binomial distribution can be motivated by considered independent Bernoulli random variables with the same probability {$$}\pi{/$$} and taking their sum.
If {$$}X_i\stackrel{ind}{\sim} Ber(\pi){/$$}, the the total number of success {$$}Y = \sum_{i=1}^n X_i{/$$} has a binomial distribution and we write {$$}Y\sim Bin(n,\pi){/$$}. 
The support for a binomial distribution is all the possible sums we could observe. 
If the {$$}X_i{/$$} are all 0, then {$$}Y{/$$} is 0 while if the {$$}X_i{/$$} are all 1, then {$$}Y{/$$} is {$$}n{/$$}. 
With different combinations of the {$$}X_i{/$$} being 0 and 1, we can obtain any integer between 0 and {$$}n{/$$} and thus the  support for a binomial random variable is {$$}\mathcal{Y} = \{0,1,2,\ldots, n\}.

If we consider how many ways there are to obtain a particular value {/$$}y{$$}, we can think about selecting {/$$}y{$$} of the {/$$}X_i$'s to be 1 and the remainder to be 0. 
For example, if {$$}n=3{/$$} and {$$}y=1{/$$}, we can select either {$$}X_1{/$$}, {$$}X_2{/$$}, or {$$}X_3{/$$} to be a 1 with the rest being zero and thus the number of ways that we can obtain {$$}y=1{/$$} when {$$}n=3{/$$} is 3. 
There is a convenient formula called the combination formula that allows us to calculate the number of ways to obtain {$$}y{/$$} successes out of {$$}n{/$$} attempts. 
The combination formula is
{$$}
{n \choose y} = \frac{n!}{(y!(n-y)!}
{/$$} 
where {$$}n!{/$$} is the factorial function, i.e. {$$}n! = 1\times 2 \times 3 \times \ldots \times n{/$$}. 

For each particular combination of the {$$}X_i{/$$} that produce {$$}y{/$$} successes, the probability of observing this particular combination is 
{$$}
\pi^y(1-\pi)^{n-y}
{/$$}
since there are {$$}y{/$$} successes each with probability {$$}\pi{/$$} of occurring and {$$}n-y{/$$} failures each with probability of {$$}1-\pi{/$$} of occurring. 

Putting the combination formula together with the probability formula, we have the probability mass function
{$$}
p_Y(y) = {n \choose y} \pi^y(1-\pi)^{n-y}.
{/$$}
To find the expectation and variance, we can either use this formula or the following formulas for independent random variables {$$}X_i{/$$}:
{$$} 
E\left[ \sum_{i=1}^n X_i \right] = E[X_1+X_2+\cdots+X_n] = E[X_1] + E[X_2] + \cdots + E[X_n] = \sum_{i=1}^n E[X_i]
{/$$}
and 
{$$} 
V\left[ \sum_{i=1}^n X_i \right] = V[X_1+X_2+\cdots+X_n] = V[X_1] + V[X_2] + \cdots + V[X_n] = \sum_{i=1}^n V[X_i].
{/$$}
Thus, if {$$}Y\sim Bin(n,\pi){/$$} then {$$}E[Y] = n\pi{/$$} and {$$}V[Y] = n\pi(1-\pi){/$$}.


