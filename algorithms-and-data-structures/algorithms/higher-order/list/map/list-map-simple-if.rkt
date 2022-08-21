#lang racket

; Applies a function to each element of a list, returning the results in a list,
; using simple recursion and an if expression.
; (: list-map (-> (Listoof Any) (Listof Any)))
(define (list-map f xs)
  (if
    (null? xs)
    null
    (cons
      (f (first xs))
      (list-map f (rest xs)))))

(provide list-map)
