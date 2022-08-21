#lang racket/base

; Calculate the nth Fibonacci number using memoization with a hash table,
; (: fibo (-> Integer Integer))
(define (fibo n)
  (let ([ht (make-hash)])
    (if
      (hash-has-key? ht n)
      (hash-ref ht n)
      (begin
        (hash-set!
          ht
          n
          (if
            (< n 2)
            n
            (+ (fibo (sub1 n)) (fibo (- n 2)))))
        (hash-ref ht n)))))

(provide fibo)
