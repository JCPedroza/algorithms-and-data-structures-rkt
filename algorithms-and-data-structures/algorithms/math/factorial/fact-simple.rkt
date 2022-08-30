#lang typed/racket

; Compute factorial of num, using simple recursion.
(: fact (-> Integer Integer))
(define (fact num)
  (if (< num 2) 1
    (* num (fact (sub1 num)))))

(provide fact)
