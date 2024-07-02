; Prove that Fib(n) is the closest integer to φ^n/√5, where φ = (1 + √5)/2. 
; Hint: Let 𝛙 = (1 - √5)/2. 
; Use induction and the definition of the Fibonacci numbers (see section 1.2.2) 
; to prove that Fib(n) = (φ^n - 𝛙^n)/√5.

gave up on this, i think i need to show that the error margin is small enough to say
that Fib(n) can get rounded to φ^n/√5, but im stuck and cant progress, fuck this book
the error term is psi, i suppose... because phi grows exponentially, and psi does the opposite

; actually the statement above was not correct, dont know where i took that "round" idea from
; what needs to be done is just prove that the expression  is close to fib(n) than any other int

back to this book after 2 weeks, i think ill never finish this tho

; fib(n) is the closes integer to phi^n/√5
; let phi be (1 + √5)/2
; let psi be (1 - √5)/2
; Fib(n) = (φ^n - 𝛙^n)/√5

first start analyzing the base cases(n = 0 and n = 1)

fib(0) = 0 && phi^0 = psi^0 = 1
the equation here is:
(phi^0 - psi^0)/sqrt(5) = 0/sqrt(5) = 0
so for this case its true since fib(0) is 0

; explaining better
(phi^0 - psi^0)/sqrt(5) = (1 - 1)/sqrt(5) = 0/sqrt(5) = 0

fib(1) = 1 && phi^1 = psi^1 = 1
(phi^1 - psi^1)/sqrt(5) = (1 - 1)/sqrt(5) = 0/sqrt(5) = 0

; and for n = 1 i got the same thing, but assuming this is supposed to be
; an approximation, 0

im  keeping what im writing here just for reference, and this book as far as i know have
no official answers, so i have no idea if what im doing is right or not

n = 1 being 0 is wrong, it think it should be one not 0.
the error was here (1 - 1)/sqrt(5), i was treating them as 1, they are not 1
they are this:
; let phi be (1 + √5)/2
; let psi be (1 - √5)/2

(phi^1 - psi^1)/sqrt(5) = ((1 + sqrt(5)/2) - (1 - sqrt(5/2)))/sqrt(5) = 0/sqrt(5) = 0

i was tripping, here ((1 + sqrt(5)/2) - (1 - sqrt(5/2)))

since the denominator are the same, we use only 2 for both expressions,
and we get this:

1 + sqrt(5) - 1 - sqrt(5) / 2

we can simplify by cutting the + 1 and - 1

and we are left with sqrt(5) + sqrt(5) / 2, and now we have 2sqrt(5)/2, we can simplify that
by dividing the 2 in the numerator so we have now sqrt(5)

so the outcome of this: (phi^1 - psi^1)/sqrt(5)

is sqrt(5)/sqrt(5) = 1, so fib(1) = 1 and (φ^n - 𝛙^n)/√5 is 1 too
