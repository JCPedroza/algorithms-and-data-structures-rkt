#lang typed/racket

; Compute sum of even Fibonacci numbers that do not exceed the given limit,
; using brute force trial division and tail call recursion.
(: even-fibo-sum (-> Integer Integer))
(define (even-fibo-sum limit)
  (let loop ((sum 0) (now 0) (nxt 1))
    (cond
      [(> now limit) sum]
      [(even? now) (loop (+ sum now) nxt (+ nxt now))]
      [#t (loop sum nxt (+ nxt now))])))

(provide even-fibo-sum)
