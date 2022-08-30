#lang typed/racket

; Compute sum of even Fibonacci numbers that do not exceed the given limit,
; using a skipped sequence and tail call recursion.
(: even-fibo-sum (-> Integer Integer))
(define (even-fibo-sum limit)
  (let loop ((sum 0) (now 2) (nxt 8))
    (if (> now limit) sum
      ; Get only even fib nums with nxt = 4 * nxt + now
      (loop (+ sum now) nxt (+ now (* 4 nxt))))))

(provide even-fibo-sum)
