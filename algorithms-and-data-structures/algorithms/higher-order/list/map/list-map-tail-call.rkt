#lang racket/base

(provide map)

(define (map f xs)
  (let loop ((g f) (ys xs) (map-list null))
    (if (null? ys)
        map-list
        (loop g (cdr ys) (cons (g (car ys))
                               map-list)))))

(define nums (list 0 1 2 3 4))

(define (double x) (* x 2))

(define double-nums (map double nums))

(println double-nums)
