# Should I play the lottery?

The focus of this chapter is on decision making when the result is binary, i.e. there are only two possibilities: success and failure, when the probability of success is known. 
As a running example, we will use the powerball lottery as an example. 
In the powerball lottery, there are 69 white balls of which five are drawn and there are 26 red balls of which one is drawn. 
For an individual buying a lottery ticket, winning the jackpot requires the individual to correctly choose all five white balls and the one red ball. In order to answer the question of whether we should play the lottery, the fundamental concepts of sets, events, and probabilities of events will need to be introduced. 

## Set theory

A set is a collection of objects, e.g. the set of white balls in the powerball lottery.
Each set has members, i.e. those objects that form the set. 
So the set of white balls in the powerball lottery has members that include the white #1 ball up to the white #69 ball. 

Mathematically, we use notation to indicate a set, e.g. let {$$}W{/$$} be the set of white balls in the powerball lottery, and to indicate members of the set, e.g. let  {$$}w_1{/$$} indicate the white #1 ball. 
To denote that the white #1 ball is in the set, we use the notation {$$}w_1\in W{/$$} and we say ``$w_1{$$} is *in* {/$$}W$''.
We can also define the set as a whole which we do through bracket notation, i.e. 

{$$}
W = \{w_1,w_2,\ldots,w_69\}
{/$$}

where {$$}\ldots{/$$} indicates that the sequence continues. 

Some objects are not in the set, notably the red balls. 
If we indicate the red balls using the notation {$$}r_1{/$$} to {$$}r_{26}{/$$}, then we use the notation {$$}r_1 \notin W{/$$} to indicate that ``$r_1{$$} is not in {/$$}W$''.

### Operations on sets

Let's define {$$}W_O{/$$} to be all the odd numbered white balls in the powerball lottery and {$$}W_E{/$$} to be all the even numbered white balls in the powerball lottery.
We can combine sets using *union* operator {$$}\cup{/$$} which just means to take all the members of one set and add them to another set. 
For example, {$$}W_O\cup W_E = W{/$$} since 

{$$}
\{w_1,w_3,w_5,\ldots,w_{67},w_{69}\} \cup 
\{w_2,w_4,w_6,\ldots,w_{66},w_{68}\} = \{w_1,w_2,\ldots,w_69\}.
{/$$}

Formally, {$$}w\in W{/$$} if {$$}w\in W_O{/$$} *or* {$$}w\in W_E{/$$} (or both). 
So the union operator is related to the English word *or*. 

Another operators is the *intersection* operator {$$}\cap{/$$} which just means to take all the members that are in both sets. 
Let's let {$$}W_{<10}{/$$} indicate all the white balls that have a number less than {$$}10{/$$}. 
Then 

{$$}
W_E \cap W_{<10} = \{w_2,w_4,w_6,w_8\}
{/$$}

since the white balls with numbers 2, 4, 6, and 8 are the only white balls that are both even *and* less than 10. 
Thus the intersection operator is related to the English word *and*. 

Two sets are called *disjoint* if they have no members in common.
For example, {$$}W_O{/$$} and {$$}W_E{/$$} are disjoint because there are no white powerballs that are numbered with both an odd and an even number.
We write {$$}W_O\cap W_E = \emptyset{/$$} where {$$}\emptyset{/$$} is called the *empty set* and is our notation to indicate that there is nothing in the set. 
More sets are called *disjoint* if no pair has any members in common. 
For example, if {$$}W_{10-20}{/$$} indicates the white balls numbered from 10 to 20 and {$$}W_{>20}{/$$} are the white balls numbered greater than 20, then the sets {$$}W_{<10}{/$$}, {$$}W_{10-20}{/$$} and {$$}W_{>20}{/$$} are disjoint.











