# Decision making under certainty

This chapter is going to have a number of very silly examples. 
In each example, you will be asked to make a decision about the best course of action. 
Then we will walk through the decision that we think is the best and why. 
The examples will be silly because there will be no surprises, i.e. you will know exactly what will happen under each possible decision. 
We call this *decision making under certainty*.


## Grocery store shopping

When walking down a grocery store aisle there are many choices we can make. 
At one point in my life I was experimenting with off-brand versions of packaged foods I normally buy.
On one particular occasion, I was buying saltine crackers.
Typically I would be the Nabisco Premium Saltines&trade;, but I decided that on this particular occasion I would base my decision of what brand to buy solely based on which brand was cheapest. 
The three brands available were Nabisco ($2.00), an off brand ($1.80), and the store brand ($1.55).
So I bought the store brand. 

We can formalize this decision by introducing my *cost function*.
Mathematically, we write the utility $C(x)$ as a function of my decision $x$.
In this scenario

$$
C(x) = \left\{ \begin{array}{rl}
2.00 & \mbox{if $x$ is Nabisco} \\
1.80 & \mbox{if $x$ is off brand} \\
1.55 & \mbox{if $x$ is store brand}
\end{array} \right.
$$

Since I was making a decision based on which brand was the cheapest, I was choosing $x$ to minimize the cost.
Mathematically, we write



