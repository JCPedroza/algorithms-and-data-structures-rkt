#lang racket

; Applies a function to each element of a list, returning the results in a list,
; using simple recursion and a cond expression.
(define (list-map f xs)
  (cond
    [(null? xs) null]
    [#t (cons
      (f (first xs))
      (list-map f (rest xs)))]))

(provide list-map)
