#lang racket

(define (list-filter f xs)
  (cond
    [(null? xs) null]
    [(f (first xs)) (cons
      (first xs)
      (list-filter f (rest xs)))]
    [#t (list-filter f (rest xs))]))

(provide list-filter)
