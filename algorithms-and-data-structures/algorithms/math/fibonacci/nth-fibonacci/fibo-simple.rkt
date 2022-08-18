#lang typed/racket

(provide fibo)

; Compute the nth Fibonacci number using simple recursion.
(: fibo (-> Integer Integer))
(define (fibo n)
  (if (< n 2)
      n
      (+ (fibo (sub1 n))
         (fibo (- n 2)))))

(fibo 6)
