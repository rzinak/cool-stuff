(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

defines a procedure called a-plus-abs-b that takes two arguments (a, b)
and checks if b is bigger than 0, if it is, i sums a and b. if its not,
it returns the difference of a and b
