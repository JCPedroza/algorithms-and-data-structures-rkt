#lang racket

(define (list-filter f xs)
  (if (null? xs) null
    (if
      (f (first xs))
      (cons (first xs) (list-filter f (rest xs)))
      (list-filter f (rest xs)))))

(provide list-filter)
