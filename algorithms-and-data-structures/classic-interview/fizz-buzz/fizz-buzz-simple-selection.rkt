#lang racket/base

; Convert number to fizz buzz string
(define (num->fb num)
  (cond
    [(zero? (modulo num 15)) "fizzbuzz"]
    [(zero? (modulo num 3)) "fizz"]
    [(zero? (modulo num 5)) "buzz"]
    [#t (number->string num)]))

; Build list of fizz buzz sequence within the given range, using string
; selection and simple recursion.
(define (fizz-buzz from to)
  (if
    (> from to)
    null
    (cons
      (num->fb from)
      (fizz-buzz (add1 from) to))))

(provide fizz-buzz)
