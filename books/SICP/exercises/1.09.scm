; + 4 5
(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

(+ 4 5) => (inc (+ 3 5)) ; 4 is not 0
(+ 3 5) => (inc (+ 2 5)) ; 3 is not 0
(+ 2 5) => (inc (+ 1 5)) ; 2 is not 0
(+ 1 5) => (inc (+ 0 5)) ; 1 is not 0
(+ 0 5) => 5 ; now a is 0

so (+ 4 5) => (inc (inc (inc (inc 5)))) => 9

the procedure counts how many times it recursively calls itself.
it increments inc to the end of each iteration

; + 4 5
(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

(+ 4 5) => (+ 3 6) ; 4 is not 0
(+ 3 6) => (+ 2 7) ; 3 is not 0
(+ 2 7) => (+ 1 8) ; 2 is not 0
(+ 1 8) => (+ 0 9) ; 1 is not 0
(+ 0 9) => 9 ; now a is 0

so (+ 4 5) => 9

now this one is simpler, it basically subtracts 1 from a
and adds 1 to b, until a = 0

so in the end both are recursive and not iterative procedures.
