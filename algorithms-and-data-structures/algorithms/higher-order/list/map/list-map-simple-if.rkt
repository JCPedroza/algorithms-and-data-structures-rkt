#lang racket

; Applies a function to each element of a list, returning the results in a list,
; using simple recursion and an if expression.
; (: map (-> (Listoof Any) (Listof Any)))
(define (map f xs)
  (if
    (null? xs)
    null
    (cons
      (f (first xs))
      (map f (rest xs)))))

(provide map)