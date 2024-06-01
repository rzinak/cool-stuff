(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

applicative-order will evaluate the arguments first, in this case it will
call the (p) procedure which will be an infinite loop, as (p) calls itself
recusively with no base case.

normal-oder evaluate the procedure first, (test) in this case. and since x = 0,
it will return 0, and will never evaluate the (p) argument.
