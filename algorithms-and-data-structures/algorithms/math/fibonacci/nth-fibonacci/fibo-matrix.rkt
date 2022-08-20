#lang typed/racket

(require math/matrix)

(provide fibo)

; Compute the nth Fibonacci number using matrix form.
; (: fibo (-> Integer Integer))
(define (fibo (n : Integer))
  (matrix-ref
    (matrix-expt
      (matrix
        ([1 1]
         [1 0]))
    n)
  1 0))

(fibo 6)
