#lang racket

(provide filter)

(define (filter f xs)
  (cond
    [(null? xs) null]
    [(f (first xs)) (cons
      (first xs)
      (filter f (rest xs)))]
    [#t (filter f (rest xs))]))

(define nums '(1 2 3 4 5 6))

(define even-nums (filter even? nums))

even-nums
