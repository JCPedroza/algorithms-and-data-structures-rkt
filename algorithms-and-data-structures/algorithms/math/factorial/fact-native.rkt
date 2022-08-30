#lang typed/racket

(require math/special-functions)

; Compute factorial of num, using the native function.
(: fact (-> Integer Integer))
(define (fact num) (gamma (add1 num)))

(provide fact)
