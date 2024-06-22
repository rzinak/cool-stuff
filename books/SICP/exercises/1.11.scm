; linear recursive
(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(factorial 6)
(* 6 (factorial 5))
(* 6 (* 5 (factorial 4)))
(* 6 (* 5 (* 4 (factorial 3))))
(* 6 (* 5 (* 4 (* 3 (factorial 2)))))
(* 6 (* 5 (* 4 (* 3 (* 2 (factorial 1))))))
(* 6 (* 5 (* 4 (* 3 (* 2 1)))))
(* 6 (* 5 (* 4 (* 3 2))))
(* 6 (* 5 (* 4 6)))
(* 6 (* 5 24))
(* 6 120)
720

; its linear recursive because it grows linearly with n

; linear iterative
(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
    product
    (fact-iter (* counter product)
               (+ counter 1)
               max-count)))

(factorial 6)
(fact-iter 1 1 6)
(fact-iter 1 2 6)
(fact-iter 2 3 6)
(fact-iter 6 4 6)
(fact-iter 24 5 6)
(fact-iter 120 6 6)
(fact-iter 720 7 6)
720

; linear iterative because instead of growing with the input,
; it keeps track and update the state of a fixed set of variables

; tree recursion
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))

(fib 3)
(+ (fib 2) (fib 1))
(+ (+ (fib 1) (fib 0)) 1)
(+ (+ 1 0) 1)
(+ 1 1)
2

fib 3
      fib 2
            fib 1 => 1
            fib 0 => 0
                  1 + 0 => 1
      fib 1 1
            1 + 1 => 2

; tree recursion, because a function calls itself multiple times,
; creating a 'branching' structure, resembling a tree


; iterative fibonacci
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
    b
    (fib-iter (+ a b) a (- count 1))))

a = 1
b = 0
count = n = 5

(fib 5)
(fib-iter (+ 1 0) 1 (- 5 1))
(fib-iter 1 1 4)
(fib-iter (+ 1 1) 1 (- 4 1))
(fib-iter 2 1 3) 
(fib-iter (+ 2 1) 2 (- 3 1))
(fib-iter 3 2 2)
(fib-iter (+ 3 2) 3 (- 2 1))
(fib-iter 5 3 1)
(fib-iter (+ 5 3) 5 (- 1 1))
(fib-iter 8 5 0)
5

; exercise

; A function f is defined by the rule that 
; f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. 
; Write a procedure that computes f by means of a recursive process. 
; Write a procedure that computes f by means of an iterative process.

; recursive approach
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))) 

; iterative approach

(define (f-iter n)
  (define (iter a b c count)
    (if (> count n)
        a
        (iter (+ a (* 2 b) (* 3 c)) a b (+ count 1))))
  (if (< n 3)
      n
      (iter 2 1 0 3)))
