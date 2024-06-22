; Write a procedure that computes elements of Pascal's triangle by means of a recursive process.

; it takes two arg as input, row and column indexes

p(n, k) = 1 if k = 0 || k = n
p(n, k) = p(n - 1, k - 1) + p(n - 1, k)

(define (p n k)
  (cond ((or (= k 0) (= k n)) 1)
        (else (+ (p (- n 1) (- k 1)) (p (- n 1) k)))))

(p 4 2)
(+ (p 3 1) (p 3 2))
(+ (+ (p 2 0) (p 2 1)) (p 3 2))
(+ (+ 1 (p 2 1)) (p 3 2))
(+ (+ 1 (+ (p 1 0) (p 1 1))) (p 3 2))
(+ (+ 1 (+ 1 (p 1 1))) (p 3 2))
(+ (+ 1 (+ 1 1)) (p 3 2))
(+ (+ 1 2) (p 3 2))
(+ 3 (p 3 2))
(+ 3 (+ (p 2 1) (p 2 2)))
(+ 3 (+ 2 (p 2 2)))
(+ 3 (+ 2 1))
(+ 3 3)
6
