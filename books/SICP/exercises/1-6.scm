its going to result in an infinite loop.

thats like in imperative programming between if-else and switch...
if we are using a if-then-else, just a single is evaluated.
but in switch statements, a condition inside that will always be evaluated, 
since its executed in order

in this case, the else-clause in the cond, since there are no other checks to prevent
this from happening.

it means that since the first predicate is not true, the else will evaluate,
and since the else clause is a recursive call to sqrt-iter, it will keep looping infinitely
