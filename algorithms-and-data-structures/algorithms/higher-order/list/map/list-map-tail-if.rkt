#lang racket

; Applies a function to each element of a list, returning the results in a list,
; using tail call recursion and an if expression.
; (: map (-> (Listoof Any) (Listof Any)))
(define (map f xs)
  (reverse (let loop ((ys xs) (maps null))
    (if
      (null? ys)
      maps
      (loop (rest ys) (cons (f (first ys)) maps))))))

(provide map)