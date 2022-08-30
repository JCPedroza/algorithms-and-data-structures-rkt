#lang typed/racket

; Compute factorial of num, using fold.
(: fact (-> Integer Integer))
(define (fact num)
  (foldl * 1 (range 2 (add1 num))))

(provide fact)
