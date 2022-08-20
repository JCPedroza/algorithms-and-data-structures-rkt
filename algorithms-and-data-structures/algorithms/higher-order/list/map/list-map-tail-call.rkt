#lang racket/base

(provide map)

(define (map f xs)
  (reverse (let loop ((ys xs) (maps null))
    (if (null? ys)
        maps
        (loop (cdr ys) (cons (f (car ys))
                               maps))))))

(define nums (list 0 1 2 3 4))

(define (double x) (* x 2))

(define double-nums (map double nums))

(println double-nums)
