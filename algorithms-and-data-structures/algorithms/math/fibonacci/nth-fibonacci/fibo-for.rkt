#lang typed/racket

(provide fibo)

; Calculate the nth Fibonacci number using a for loop and three variables.
(: fibo (-> Integer Integer))
(define (fibo n)
  (let ([now 0]
        [nxt 1]
        [tmp 0])
       (for ([idx n])
         (set! tmp now)
         (set! now nxt)
         (set! nxt (+ nxt tmp)))
       now))

(println (fibo 6))
