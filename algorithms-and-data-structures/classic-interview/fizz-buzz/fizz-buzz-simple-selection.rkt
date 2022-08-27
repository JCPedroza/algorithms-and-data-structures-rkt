#lang typed/racket

; Convert number to fizz buzz string using string selection.
(: integer->fizz-buzz (-> Integer String))
(define (integer->fizz-buzz num)
  (cond
    [(zero? (modulo num 15)) "fizzbuzz"]
    [(zero? (modulo num 3)) "fizz"]
    [(zero? (modulo num 5)) "buzz"]
    [#t (number->string num)]))

; Build list of fizz buzz sequence within the given range, using string
; selection and simple recursion.
(: fizz-buzz (-> Integer Integer (Listof String)))
(define (fizz-buzz from to)
  (if
    (> from to)
    null
    (cons
      (integer->fizz-buzz from)
      (fizz-buzz (add1 from) to))))

(provide fizz-buzz)
