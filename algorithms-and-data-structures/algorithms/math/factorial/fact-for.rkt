#lang typed/racket

; Compute factorial of num, using a for loop.
(: fact (-> Integer Integer))
(define (fact num)
  (let ([prod 1])
    (for ([x (in-range 2 (add1 num))])
      (set! prod (* prod x)))
    prod))

(provide fact)
