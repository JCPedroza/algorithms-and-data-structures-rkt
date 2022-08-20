#lang racket/base

(provide filter)

(define (filter f xs)
  (cond
    [(null? xs) null]
    [(f (car xs)) (cons
      (car xs)
      (filter f (cdr xs)))]
    [#t (filter f (cdr xs))]))

(define nums '(1 2 3 4 5 6))

(define even-nums (filter even? nums))

even-nums
