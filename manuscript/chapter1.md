# Decision making under certainty

This chapter is going to have a number of very silly examples. 
In each example, you will be asked to make a decision about the best course of action. 
Then we will walk through the decision that we think is the best and why. 
The examples will be silly because there will be no surprises, i.e. you will know exactly what will happen under each possible decision. 
We call this *decision making under certainty*.


## Grocery shopping based on price

When walking down a grocery store aisle there are many choices we can make. 
At one point in my life I was experimenting with off-brand versions of packaged foods I normally buy.
On one particular occasion, I was buying saltine crackers.
Typically I would be the Nabisco Premium Saltines&trade;, but I decided that on this particular occasion I would base my decision of what brand to buy solely based on which brand was cheapest. 
The three brands available were Nabisco (\$2.00), an off brand (\$1.80), and the store brand (\$1.75).
So I bought the store brand. 

We can formalize this decision by introducing my *cost function*.
Mathematically, we write the cost {$$}C(x){/$$} as a function of my decision {$$}x{/$$}.
In this scenario

{$$}
C(x) = \left\{ \begin{array}{rl}
\$2.00 & \mbox{if }x\mbox{ is Nabisco} \\
\$1.80 & \mbox{if }x\mbox{ is off brand} \\
\$1.75 & \mbox{if }x\mbox{ is store brand}
\end{array} \right.
{/$$}

Since I was making a decision based on which brand was the cheapest, I was choosing {$$}x{/$$} to minimize the cost.
Mathematically, we write {$$}\mbox{argmin}_x C(x){/$$} where argmin means to take the argument {$$}x{/$$} that minimizes the function {$$}C(x){/$$}. 
In this scenario, the argmin is ``store brand''. 

We have just made our first decision based on certainty.
That is, we knew exactly what would happen for each decision that we made.



## Grocery shopping based on satisfaction

Upon arriving home, I ate one of my favorite snacks: saltines with peanut butter. 
Ugh! 
It tasted terrible. 
Since that day, when buying saltine crackers, I have only bought Nabisco Premium Saltines&trade;.

Apparently for all my future decisions my cost function has changed (assuming that there are cheaper brands than Nabisco).
I need to somehow incorporate my satisfaction into the cost function since my satisfaction from eating a Nabisco brand cracker is much higher than the store brand. 
For the sake of the example, let's suppose my satisfaction for the Nabisco brand is \$3.00, off brand is \$2.50, and store brand is \$2.00 (it tasted terrible, but was still satiating). 

Now, when we are purchasing saltine crackers we need to weigh my satisfaction versus cost of the crackers. 
We will formalize this using a utility function {$$}U(x){/$$} which again is a function of the decision {$$}x{/$$}. 
This utility function increases with satisfaction and decreases with the items cost.
In this scenario, we have 

{$$}
U(x) = \left\{ \begin{array}{rl}
\$1.00  & \mbox{if }x\mbox{ is Nabisco} \\
\$0.70  & \mbox{if }x\mbox{ is off brand} \\
\$0.25  & \mbox{if }x\mbox{ is store brand}
\end{array} \right.
{/$$}
where the utility for Nabisco is \$1.00 = \$3.00-\$2.00 because our satisfaction is \$3.00 and our cost is \$2.00. 

Now, we want to maximize this utility, i.e. {$$}\mbox{argmax}_x U(x){/$$} where argmax{$$}_x{/$$} returns the {$$}x{/$$} that maximizes {$$}U(x){/$$}. 
In this example, Nabisco maximies our utility. 

A> Utility is just the negative of cost, i.e. {$$}U(x) = -C(x){/$$} where cost would include your disappointment (negative satisfaction) in the product.
A> Throughout the rest of the book, I prefer to be an optimist and therefore would prefer to maximize utility rather than minimize cost. 

Many of the decisions we make have a component of satisfaction that is hard to quantify. 
So we won't typically know that the satisfaction we gain for Nabisco is a specified number but rather we know that it is worth the \$0.25 extra that we have to pay over the store brand and the \$0.20 extra we have to pay over the off brand.
If the price of the Nabisco brand raised to {$$}20.00 with everything else staying equal, we probably would opt for a different brand and thus we would have an upper bound on how much satisfaction that brand would give us.



## 



