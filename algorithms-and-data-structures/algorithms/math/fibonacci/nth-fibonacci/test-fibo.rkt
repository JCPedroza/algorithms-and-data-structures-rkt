#lang racket/base

(require rackunit "fibo-simple.rkt")

#|
(requrie
  (rename-in "fibo-simple.rkt" (fibo fibo-simple)))
|#

(check-equal? (fibo 0) 0 "test")
