#lang racket/base

(define (filter f xs)
  (let loop ((ys xs) (filters null))
    (cond
      [(null? ys) filters]
      [(f (car ys)) (loop (cdr ys) (cons (car ys) filters))]
      [#t (loop f (cdr ys))])))

(define nums '(1 2 3 4 5 6))

(define even-nums (filter even? nums))

even-nums
