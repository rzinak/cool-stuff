original good-enough

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

possible solution

(define (good-enough? guess x)
  (define tolerance 0.00001)
  (< (/ (abs (- guess x)) guess) tolerance))

2 3 -> 9
2 - 3
-1 
1
1/2 -> 0.5
0.5 < 0.00001 -> false

it wont work because of the fixed tolerance too,
we need to keep track of the guess instead

a full solution:

(define (good-enough? guess prev-guess)
  (define tolerance 0.00001)
  (< (/ (abs (- guess prev-guess)) guess) tolerance))

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

so basically, the original good-enough wont work because the guess is never tracked,
as for example, if we are using it to calculate a sqrt of a very small number,
the result will be too small, evaluating true, even though its not close to the
actual answer.

the opposite also happens: if the number we are trying to calculate is too big,
the result will be so big that the procedure will never stop executing.

so for the answer we need to keep track of the guess, and if its not close enough, we
improve it again, but this time, the guess passed will be the previous guess and the current guess.

