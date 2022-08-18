#lang racket/base

(require rackunit "fibo-simple.rkt")

(check-equal? (fibo 0) 0 "test")
