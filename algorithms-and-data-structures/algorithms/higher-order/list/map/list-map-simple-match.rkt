#lang racket/base

(require racket/match)

(provide map)

(define (map f xs)
  (match xs
    [null null]
    [(list x) (list (f (car xs)))]
    [(list* x ... tl) (cons (f (car xs))
                            (map f (cdr xs)))]))

(define nums (list 3 4))

(define (double x) (* x 2))

(define double-nums (map double nums))

(println double-nums)
