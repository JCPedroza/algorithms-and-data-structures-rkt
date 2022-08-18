#lang racket/base

(require math/matrix)

(provide fibo)

; Compute the nth Fibonacci number using matrix form.
(define (fibo n)
  (matrix-ref
    (matrix-expt
      (matrix
        ([1 1]
         [1 0]))
    n)
  1 0))

(fibo 6)
