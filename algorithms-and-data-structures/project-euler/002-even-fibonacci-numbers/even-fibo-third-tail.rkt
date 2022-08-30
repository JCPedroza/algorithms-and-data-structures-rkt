#lang typed/racket

; Compute sum of even Fibonacci numbers that do not exceed the given limit,
; using every third fibonacci number and tail call recursion.
(: even-fibo-sum (-> Integer Integer))
(define (even-fibo-sum limit)
  (let loop ((sum 0) (fst 1) (snd 1) (trd 2)) ; Every third fib num is even
    (if (> trd limit) sum
      (loop
        (+ sum trd)
        (+ snd trd)
        (+ snd trd trd)
        (+ snd snd trd trd trd)))))

(provide even-fibo-sum)
