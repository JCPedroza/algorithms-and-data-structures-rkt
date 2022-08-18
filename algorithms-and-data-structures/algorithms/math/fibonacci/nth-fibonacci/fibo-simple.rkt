#lang typed/racket

(: fibo (-> Integer Integer))
(define (fibo n)
  (if (< n 2)
      n
      (+ (fibo (sub1 n)) (fibo (- n 2)))))

(provide fibo)
