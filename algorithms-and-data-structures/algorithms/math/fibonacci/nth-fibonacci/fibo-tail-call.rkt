#lang typed/racket

(provide fibo)

; Compute the nth Fibonacci number using tail call recursion.
(: fibo (-> Integer Integer))
(define (fibo n)
  (let loop ((now 0) (nxt 1) (idx 0))
    (if (>= idx n)
        now
        (loop nxt (+ now nxt) (add1 idx)))))

(fibo 6)
