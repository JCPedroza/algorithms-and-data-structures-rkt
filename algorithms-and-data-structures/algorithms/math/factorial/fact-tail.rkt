#lang typed/racket

; Compute factorial of num, using tail call recursion.
(: fact (-> Integer Integer))
(define (fact num)
  (let loop ((prod 1) (x num))
    (if (< x 2) prod
      (loop (* prod x) (sub1 x)))))

(provide fact)
