#lang racket

(define (list-filter f xs)
  (let loop ((ys xs) (filters null))
    (cond
      [(null? ys) filters]
      [(f (first ys)) (loop (rest ys) (cons (first ys) filters))]
      [#t (loop f (rest ys))])))

(provide list-filter)
