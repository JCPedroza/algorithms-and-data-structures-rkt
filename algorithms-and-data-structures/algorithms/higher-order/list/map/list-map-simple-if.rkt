#lang racket/base

(provide map)

; Applies a function to each element of a list, returning the results in a list,
; using simple recursion and if.
; (: map (-> (Listoof Any) (Listof Any)))
(define (map f xs)
  (if (null? xs)
      null
      (cons
        (f (car xs))
        (map f (cdr xs)))))

(define nums (list 0 1 2 3 4))

(define (double x) (* x 2))

(define double-nums (map double nums))

(println double-nums)
