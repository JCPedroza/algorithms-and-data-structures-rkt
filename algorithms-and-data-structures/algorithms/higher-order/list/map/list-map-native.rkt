#lang racket/base

; Applies a function to each element of a list, returning the results in a list,
; using the native map function.
; (: list-map (-> (Listoof Any) (Listof Any)))
(define (list-map f xs) (map f xs))

(provide list-map)
