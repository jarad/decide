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
Mathematically, we write the cost {$$}C(d){/$$} as a function of my decision {$$}d{/$$}.
In this scenario

{$$}
C(d) = \left\{ \begin{array}{rl}
\$2.00 & \mbox{if }d\mbox{ is ``Nabisco''} \\
\$1.80 & \mbox{if }d\mbox{ is ``off brand''} \\
\$1.75 & \mbox{if }d\mbox{ is ``store brand''}
\end{array} \right.
{/$$}

Since I was making a decision based on which brand was the cheapest, 
I was choosing {$$}d{/$$} to minimize the cost.
Mathematically, we write {$$}\mbox{argmin}_d C(d){/$$} where argmin means to take the argument {$$}d{/$$} that minimizes the function {$$}C(d){/$$}. 
In this scenario, the argmin is ``store brand''. 

We have just made our first decision based on certainty.
That is, we knew exactly what would happen for each decision that we could have
made and we chose the decision that minimized our cost function, 
i.e. the cheapest product.



## Grocery shopping based on satisfaction

Upon arriving home, I ate one of my favorite snacks: 
saltines with peanut butter. 
Ugh! 
It was utterly disgusting. 
Since that day, when buying saltine crackers, 
I have only bought Nabisco Premium Saltines&trade;.

Apparently for all my future decisions my cost function has changed 
(assuming that there are cheaper brands than Nabisco).
I need to somehow incorporate my satisfaction into the cost function since my satisfaction from eating a Nabisco brand cracker is much higher than the store brand. 
For the sake of the example, 
let's suppose my satisfaction for the Nabisco brand is \$3.00, 
off brand is \$2.50, 
and store brand is \$2.00 (it tasted terrible, but was still satiating). 

Now, when we are purchasing saltine crackers we need to weigh my satisfaction 
versus cost of the crackers. 
We will formalize this using a utility function {$$}U(d){/$$} which again is a function of the decision {$$}d{/$$}. 
This utility function increases with satisfaction and decreases with the items cost.
In this scenario, we have 

{$$}
U(d) = \left\{ \begin{array}{rl}
\$1.00  & \mbox{if }d\mbox{ is ``Nabisco''} \\
\$0.70  & \mbox{if }d\mbox{ is ``off brand''} \\
\$0.25  & \mbox{if }d\mbox{ is ``store brand''}
\end{array} \right.
{/$$}
where the utility for Nabisco is \$1.00 = \$3.00-\$2.00 because our satisfaction
is \$3.00 and our cost is \$2.00. 

Now, we want to maximize this utility, 
i.e. {$$}\mbox{argmax}_d U(d){/$$} where argmax{$$}_d{/$$} returns the {$$}d{/$$} that maximizes {$$}U(d){/$$}. 
In this example, Nabisco maximies our utility. 

A> Utility is just the negative of cost, i.e. {$$}U(d) = -C(d){/$$} where cost would include your disappointment (negative satisfaction) in the product.
A> Throughout the rest of the book, I prefer to be an optimist and therefore maximize utility rather than minimizing cost. 

Many of the decisions we make have a component of satisfaction that is hard to quantify. 
Typically, we won't know that the satisfaction we gain for Nabisco is a specified number but rather we know that it is worth the \$0.25 extra that we have to pay over the store brand and the \$0.20 extra we have to pay over the off brand.
If the price of the Nabisco brand raised to \$20.00 with everything else staying equal, we probably would opt for a different brand and thus we would have an upper bound on how much satisfaction that brand would give us.
