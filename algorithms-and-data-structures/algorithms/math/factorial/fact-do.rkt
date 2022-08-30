#lang typed/racket

; Compute factorial of num, using a do loop.
(: fact (-> Integer Integer))
(define (fact num) 0
  (do (
    [x 1 (+ x 1)]
    [prod 1 (* prod x)])
    ((> x num) prod)))

(provide fact)
